include ../Makefile.inc

GEN_EXE = tee cp_holes append_seek_write atomic_append dup_clone dup_common_attrs \
          readv_writev_clone longjmp_error my_env free_and_sbrk malloc_free_clone \
          getpwnam_clone initgroups_clone

LINUX_EXE = large_file2

EXE = ${GEN_EXE} ${LINUX_EXE}

all : ${EXE}

allgen : ${GEN_EXE}

clean : 
	${RM} ${EXE} *.o

showall :
	@ echo ${EXE}

${EXE} : ${LPLIB}		# True as a rough approximation
