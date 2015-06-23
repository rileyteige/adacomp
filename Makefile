MAINPROG=adacomp

main:
	gnatmake ${MAINPROG}.adb -o ${MAINPROG}

clean:
	rm -f ${MAINPROG} *~ *.ali *.o
