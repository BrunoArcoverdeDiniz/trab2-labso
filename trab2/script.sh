#!/bin/bash
echo "Trabalho 2 - Aluno: Bruno Diniz"
echo "[1] Listar conteúdo da pasta atual"
echo "[2] Ver conteúdo de um arquivo"
echo "[3] Testar se uma url está no ar"
echo "[0] Sair"
echo "Escolha sua opção: "
read opcao
echo ""
  while [ $opcao != 0 ]
    do
     if [ $opcao == 1 ]
       then
         echo "$(ls)"
         echo ""
      else
       if [ $opcao == 2 ]
         then
           echo "Digite o  nome do arquivo para ver conteudo: "
           read arquivo
           echo ""
           if [ -f $arquivo ]
             then 
               cat $arquivo
             else 
               echo "$arquivo : esse arquivo nao existe"
               echo ""
            fi
         else
         if [ $opcao == 3 ]
          then
             echo "Digite o ip/url a ser testado: "
             read ip
             echo ""
             ping -c 1 $ip
             if [ $? -eq 0 ]
                 then
                     echo ""
                     echo "***** IP NO AR ***** "
                     echo ""
             else
                 echo ""
                 echo "***** IP FORA DO AR *****"
                 echo ""
             fi
         else
         if [ $opcao == 0 ]
          then
          exit 0
        fi
     fi
    fi
  fi 
 
    echo "[1] Listar conteúdo da pasta atual"
    echo "[2] Ver conteúdo de um arquivo" 
    echo "[3] Testar se uma url está no ar"
    echo "[0] Sair"
    echo "Escolha uma opção: " 
    read opcao
    echo ""
    done

