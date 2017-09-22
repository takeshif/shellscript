#!/bin/sh

echo "タスクのタイプ(today or other)："
read tasktype
if [ $tasktype = today ] 
then
  project="TODO"
else
  echo "プロジェクト名を入力："
  read project
fi
echo "プライオリティを入力(H or M or L)："
read pri
if [ $tasktype = today ]
then
  due="today"
else
  echo "締めを入力："
  read due
fi
echo "内容を入力："
read content
task add project:$project pri:$pri due:$due $content
