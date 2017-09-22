#!/bin/sh

echo "プロジェクト名を入力："
read project
echo "プライオリティを入力(H or M or L)："
read pri
echo "締めを入力："
read due
echo "内容を入力："
read content
task add project:$project pri:$pri due:$due $content
