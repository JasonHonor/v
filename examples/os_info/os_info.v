import os
import log

fn main()
{
    mut l:=log.Log{level:log.INFO}

    l.info('run os_info.')

    //get the type of os
    ostype:=os.user_os()
    println('OsType:$ostype')

    hostname:=os.exec('hostname')
    println('Hostname:$hostname')

    //get home dir of current user
    home:=os.home_dir()
    println('HomeDir:$home')

    //get the current executable file path.
    exepath:=os.getexepath()
    println('ExePath:$exepath')

    pwd:=os.getwd()
    println('CurrentDir:$pwd')

    //execute a command and fetch result string.
    uname:=os.exec('uname -ra')
    println('Uname:$uname')

    //list files
    lst :=os.ls(pwd)

    //print the count of array
    println('file count=$lst.len')

    for i,s in lst {
        size:=os.file_size(s)
        //println('file $i name:$s size:$size')
        l.debug('file $i name:$s size:$size')
    }
}