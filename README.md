# 기본 출력을 위한 Get 커맨드

kubectl get services # 네임스페이스 내 모든 서비스의 목록 조회

kubectl get pods --all-namespaces # 모든 네임스페이스 내 모든 파드의 목록 조회

kubectl get pods -o wide # 해당하는 네임스페이스 내 모든 파드의 상세 목록 조회

kubectl get deployment my-dep # 특정 디플로이먼트의 목록 조회

kubectl get pods  # 네임스페이스 내 모든 파드의 목록 조회

kubectl get pod my-pod -o yaml  # 파드의 YAML 조회



# 상세 출력을 위한 Describe 커맨드

kubectl describe nodes my-node

kubectl describe pods my-pod



# Name으로 정렬된 서비스의 목록 조회

kubectl get services --sort-by=.metadata.name



# 재시작 횟수로 정렬된 파드의 목록 조회

kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'



# PersistentVolumes을 용량별로 정렬해서 조회

kubectl get pv --sort-by=.spec.capacity.storage



# app=cassandra 레이블을 가진 모든 파드의 레이블 버전 조회

kubectl get pods --selector=app=cassandra -o \

  jsonpath='{.items[*].metadata.labels.version}'



# 예를 들어 'ca.crt'와 같이 점이 있는 키값을 검색한다

kubectl get configmap myconfig \

  -o jsonpath='{.data.ca\.crt}'



# 모든 워커 노드 조회 (셀렉터를 사용하여 'node-role.kubernetes.io/control-plane'

# 으로 명명된 라벨의 결과를 제외)

kubectl get node --selector='!node-role.kubernetes.io/control-plane'



# 네임스페이스의 모든 실행 중인 파드를 조회

kubectl get pods --field-selector=status.phase=Running



# 모든 노드의 외부IP를 조회

kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")].address}'



# 특정 RC에 속해있는 파드 이름의 목록 조회

sel=${$(kubectl get rc my-rc --output=json | jq -j '.spec.selector | to_entries | .[] | "\(.key)=\(.value),"')%?}

echo $(kubectl get pods --selector=$sel --output=jsonpath={.items..metadata.name})



# 모든 파드(또는 레이블을 지원하는 다른 쿠버네티스 오브젝트)의 레이블 조회

kubectl get pods --show-labels



# 어떤 노드가 준비됐는지 확인

JSONPATH='{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}{@.type}={@.status};{end}{end}' \

 && kubectl get nodes -o jsonpath="$JSONPATH" | grep "Ready=True"



# 외부 도구 없이 디코딩된 시크릿 출력

kubectl get secret my-secret -o go-template='{{range $k,$v := .data}}{{"### "}}{{$k}}{{"\n"}}{{$v|base64decode}}{{"\n\n"}}{{end}}'



# 파드에 의해 현재 사용되고 있는 모든 시크릿 목록 조회

kubectl get pods -o json | jq '.items[].spec.containers[].env[]?.valueFrom.secretKeyRef.name' | grep -v null | sort | uniq



# 모든 파드의 초기화 컨테이너(initContainer)의 컨테이너ID 목록 조회

kubectl get pods --all-namespaces -o jsonpath='{range .items[*].status.initContainerStatuses[*]}{.containerID}{"\n"}{end}' | cut -d/ -f3



# 타임스탬프로 정렬된 이벤트 목록 조회

kubectl get events --sort-by=.metadata.creationTimestamp



# 매니페스트가 적용된 경우 클러스터의 현재 상태와 클러스터의 상태를 비교한다.

kubectl diff -f ./my-manifest.yaml



# 노드에 대해 반환된 모든 키의 마침표로 구분된 트리를 생성한다.

# 복잡한 중첩 JSON 구조 내에서 키를 찾을 때 유용하다.

kubectl get nodes -o json | jq -c 'paths|join(".")'



# 파드 등에 대해 반환된 모든 키의 마침표로 구분된 트리를 생성한다.

kubectl get pods -o json | jq -c 'paths|join(".")'



# 모든 파드에 대해 ENV를 생성한다(각 파드에 기본 컨테이너가 있고, 기본 네임스페이스가 있고, `env` 명령어가 동작한다고 가정).

# `env` 뿐만 아니라 다른 지원되는 명령어를 모든 파드에 실행할 때에도 참고할 수 있다.

for pod in $(kubectl get po --output=jsonpath={.items..metadata.name}); do echo $pod && kubectl exec -it $pod -- env; done



# 디플로이먼트의 status 서브리소스를 조회한다.

kubectl get deployment nginx-deployment --subresource=status
