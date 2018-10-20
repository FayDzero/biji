hello.sh

#第一个shell练习
#!/bin/bash
echo "hello ,i am lalala!"   #输出一句话
echo #空格




#变量练习
#！/bin/bash
echo 正确的写法
num=10
str="10"




#变量的输出
#！/bin/bash
echo 正确的写法
num=10
str="10"
echo $num
echo $str

#变量的输入
#！/bin/bash
echo 正确的写法
read num
echo $num


#变量的输入
#！/bin/bash
echo 正确的写法
read -p num1,num2,num3
echo $num1
echo $num2
echo $num3


#echo的用法
#！/bin/bash
num=12
echo 不使用-nd时候：$num
echo 使用-n的时候：$num


#echo的用法    -e
#！/bin/bash
echo -e woring:\a
echo woring:\a
echo -e \"this is \"
echo \"this is \"
echo "插入反斜杠"
echo -e this \\is
echo this \\is


woring:a
woring:a
"this is "
"this is "
插入反斜杠
this \is
this \is

这个没有任何不同

#echo的用法    -e
#！/bin/bash
echo hello world 
echo "hello world"
str=hello world       //这种是无法正确输出的 
echo $str
str1="hello world"
echo $str1


#echo的用法    -e
#！/bin/bash
echo "执行该脚本工输出了"$#"个参数"
echo "脚本的名字"$0
echo "第一个参数"$1
echo "脚本中传入参数$*"

[root@localhost kangwang]# ./te.sh  12 234 n4
执行该脚本工输出了3个参数
脚本的名字./te.sh
第一个参数12
脚本中传入参数12 234 n4



#echo的用法    -e
#！/bin/bash
echo 使用for结构处理变量$@
count=1
for tmpstr in "$@"
do
    echo 第$count个参数的值为：$tmpstr
    count=$[$count+1]
done
echo
echo 使用for结构处理变量$*

count=1
for tmpstr in "$*"
do
    echo 第$count个变量值为：$tmpstr
    count=$[$count+1]
done


#!/bin/bash
echo "使用命令env显示环境变量"
env  #显示数据的环境变量的值


单引号的使用
#!/bin/bash
echo '不使用单引号'
echo $HOME
echo '$HOME'

echo a\tb\ta
echo 'a\tb\ta'

echo \\
echo '\\'

======输出结果=======

不使用单引号
/root
$HOME
atbta
a\tb\ta
\
\\


双引号的使用
#!/bin/bash
echo "不使用单引号"
echo $HOME
echo "$HOME"

echo a\tb\ta
echo "a\tb\ta"

echo \\
echo "\\"

======输出结果=======
/root
/root
atbta
a\tb\ta
\
\



倒引号的使用
#!/bin/bash
echo "倒引号的使用"
echo `who`
echo `date`
echo `pwd` 


./test07.sh: line 1: o: command not found
root tty1 2018-10-18 23:58 root pts/0 2018-10-19 00:00 (10.114.28.216) root pts/1 2018-10-19 00:35 (192.168.43.25) root pts/2 2018-10-19 00:46 (10.114.28.216)
Fri Oct 19 00:57:53 UTC 2018
/home/kangwang


#!/bin/bash
mkdir file1 file2 file3 file4 file5
ls f*


file1:
file2:
file3:
file4:
file5:


#!/bin/bash
echo "test"
echo "管道的测试"
cat test08.sh | head -n 3   #3就是前三行




#!/bin/bash
read name
echo 欢迎$nameww登录
echo 欢迎${name}登录

[root@localhost kangwang]# ./test10.sh 
eee
欢迎登录
欢迎eee登录


















































































