### Introdução

Este guia, juntamente com os perfis da SES-GO, tornou-se a base para os guias de implementação do FHIR no âmbito de Goiás. Esta versão reflete as mudanças nos Dados para Interoperabilidade da SES-GO e os comentários e solicitações da comunidade FHIR da SES-GO. A SES-GO tem se beneficiado dos testes e orientações da Equipe de Gerência e Inovação. Todo o trabalho e esforço contínuo tem colaborado para a documentação do design do Perfil SES-GO, interações, requisitos e diretrizes para acesso aos dados do paciente e demais dados inerentes. Sob a orientação da HL7 e da UFG, o conteúdo se expandirá nas próximas versões para atender às necessidades específicas da SES-GO.

Este Guia de Implementação é baseado na Versão R4 do FHIR. Ele define as restrições mínimas nos recursos FHIR para criação dos Perfis. Os elementos, extensões, vocabulários e conjuntos de valores DEVEM estar presentes e documentados, bem como suas definições, casos de uso e como são utilizados. Também documenta as interações mínimas do FHIR RESTful para cada Perfil SES-GO, a fim de acessar dados referentes aos dados da saúde. Este guia estabelece a "base" dos padrões para promover interoperabilidade e adoção por meio de implementação comum, além de promover uma evolução adicional dos padrões para casos de uso específicos. Existem dois cenários diferentes de utilizar o Guia de Implementação da SES-GO:

Apoio Apenas a Perfis: Sistemas serão desenvolvidos utilizando perfis e artefatos da SES-GO para representar informações clínicas.

Apoio a Perfis + Interações: Sistemas serão desenvolvidos, utilizando tanto a estrutura de conteúdo dos Perfis e artefatos quanto as interações RESTful definidas para um recurso específico.

### Suporte à Estrutura

Os requisitos do SES-GO Core foram originalmente desenvolvidos, votados e publicados como parte do projteo FHIR de Interoperabilidade da Saúde no estado de Goiás; patrocinado pela Secretaria da Saúde do Estado de Goiás (SES-GO) e apoiado pela CGIS UFG. O Guia de Implementação documentou segurança e autorização, além da consulta ao Conjunto de Dados Clínicos Comuns de documentos estáticos do Sistema Único de Saúde (SUS), bem como os principais formulários e objetos da atenção primária à saúde (APS). O SES-GO Core derivou diretamente do FHIR e, eventualmente, o FHIR R4 e o Conjunto de Dados para Interoperabilidade no Estado de Goiás.

Para integrar isso ao Guia de Implementação da SES-GO, precisaremos contextualizar como esses antecedentes influenciaram a estrutura e as diretrizes de implementação do SES-GO no âmbito do FHIR.


### Cenário hipotético

O presente guia é proposto para um cenário hipotético e visa
orientar aqueles que desejam criar guias de implementação.

Todo o conteúdo correspondente encontra-se disponível
no github ([https://github.com/kyriosdata/ig](https://github.com/kyriosdata/ig)).

### Problema

Animais empregados em procedimentos terapêuticos, os animais terapeutas, são treinados e tratados por estabelecimentos de saúde, que não comunicam as características destes animais entre si, o que dificulta a utilização dos animais em outros estabelecimentos além daquele de origem. Em consequência, podem ser subutilizados, apesar dos custos com treinamentos e cuidados necessários com a saúde destes animais.

### Solução

Uma base de dados que pode ser mantida e consultada eletronicamente, aqui denominada de Cadastro de Animais Terapeutas (CAT). O CAT é uma proposta de solução a ser incorporada pela RNDS para permitir que estabelecimentos de saúde possam cadastrar seus animais terapeutas e consultar a disponibilidade de animais terapeutas em todo o território nacional.

### Casos de uso

São dois:

- cadastro/atualização de dados de animal terapeuta e
- consulta de animal terapeuta.

O cadastro permite informar quais são os animais terapeutas e suas habilidades, características e treinamentos já realizados, bem como o estado de saúde deste animal.

A consulta permite que uma busca seja realizada nos animais terapeutas cadastrados. Desta forma é possível identificar um animal que pode ser utilizado em uma intervenção.

> O presente Guia de Implementação tem finalidade didática.
