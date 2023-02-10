#!/bin/bash


#src_folder에서 dst_folder로 파일을 복사하는 백업 스크립트입니다. rsync 명령어를 사용하여 src_folder의 모든 파일과 하위 디렉토리를 dst_folder로 복사합니다.
#백업 스크립트를 사용하려면 위의 스크립트를 텍스트 편집기에서 열고, 원하는 폴더 경로를 src_folder와 dst_folder에 지정한 후 저장한 다음, 실행하시면 됩니다.

# define the source and destination folders
src_folder='/path/to/source/folder'
dst_folder='/path/to/destination/folder'

# create the destination folder if it does not exist
if [ ! -d $dst_folder ]; then
  mkdir -p $dst_folder
fi

# backup the source folder
rsync -a $src_folder/ $dst_folder/
