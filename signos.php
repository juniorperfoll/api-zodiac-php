<?php
    $signos = [
  ["nome" => "Áries", "periodo" => "21/03 - 19/04", "descricao" => "Impulsivo e corajoso"],
  ["nome" => "Touro", "periodo" => "20/04 - 20/05", "descricao" => "Determinado e confiável"],
  ["nome" => "Gêmeos", "periodo" => "21/05 - 20/06", "descricao" => "Comunicativo e versátil"],
  ["nome" => "Câncer", "periodo" => "21/06 - 22/07", "descricao" => "Sensível e protetor"],
  ["nome" => "Leão", "periodo" => "23/07 - 22/08", "descricao" => "Líder e carismático"],
  ["nome" => "Virgem", "periodo" => "23/08 - 22/09", "descricao" => "Detalhista e analítico"],
  ["nome" => "Libra", "periodo" => "23/09 - 22/10", "descricao" => "Diplomático e justo"],
  ["nome" => "Escorpião", "periodo" => "23/10 - 21/11", "descricao" => "Intenso e estratégico"],
  ["nome" => "Sagitário", "periodo" => "22/11 - 21/12", "descricao" => "Aventureiro e otimista"],
  ["nome" => "Capricórnio", "periodo" => "22/12 - 19/01", "descricao" => "Disciplinado e ambicioso"],
  ["nome" => "Aquário", "periodo" => "20/01 - 18/02", "descricao" => "Criativo e independente"],
  ["nome" => "Peixes", "periodo" => "19/02 - 20/03", "descricao" => "Sonhador e intuitivo"],
];

    function buscarSignos($nome) {
        global $signos;
        foreach($signos as $signo) {
            if(strtolower($signo["nome"])===strtolower($nome)){
                return $signo;
            }
        }
        return null;
    }
?>