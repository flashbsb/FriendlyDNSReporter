
load_html_strings() {
    # Default to PT logic if not explicitly EN
    local lang="${HTML_REPORT_LANG:-pt}"
    lang=${lang,,} # lowercase

    if [[ "$lang" == "en" ]]; then
        # --- ENGLISH STRINGS ---
        L_RPT_TITLE="DNS Health Report"
        L_RPT_SUBTITLE="Connectivity, Security & Consistency Analysis"
        
        # Tabs
        L_TAB_DASH="Dashboard"
        L_TAB_SRV="Servers"
        L_TAB_ZONE="Zones"
        L_TAB_REC="Records"
        L_TAB_BACK="Backstage"
        
        # Card Titles
        L_CRD_NET="Network Health"
        L_CRD_STAB="Service Stability"
        L_CRD_SEC="Security Posture"
        L_CRD_MOD="Modern Standards"
        
        # Card Tooltips/Desc
        L_DESC_NET="Connectivity & Latency"
        L_DESC_STAB="Success Rate & Sync"
        L_DESC_SEC="DNSSEC, TLS & Privacy"
        L_DESC_MOD="EDNS, IPv6, DoH/DoT"
        
        # General Labels
        L_LBL_VERSION="Version"
        L_LBL_EXECITON="Execution"
        L_LBL_DURATION="Duration"
        L_LBL_SCOPE="Scope"
        L_LBL_SERVERS="Servers"
        L_LBL_ZONES="Zones"
        L_LBL_RECORDS="Records"
        L_LBL_LEGEND="Legend"
        
        # Table Headers (Servers)
        L_TH_SRV="Server"
        L_TH_GRP="Group" # Corrected from groups to Group
        L_TH_PING="Ping (ICMP)"
        L_TH_HOPS="Hops"
        L_TH_LAT="Latency"
        L_TH_RESP="Resp. Time"
        L_TH_P53="Port 53"
        L_TH_P853="Port 853"
        L_TH_VER="Version"
        L_TH_REC="Recursion"
        L_TH_EDNS="EDNS"
        L_TH_COOK="Cookie"
        L_TH_SEC="DNSSEC"
        L_TH_DOH="DoH"
        L_TH_TLS="TLS"

        # Table Headers (Zones)
        L_TH_ZONE="Zone"
        L_TH_SOA="SOA Serial"
        L_TH_AXFR="AXFR Status"
        L_TH_SIG="DNSSEC Sig"
        
        # Table Headers (Records)
        L_TH_TYPE="Type"
        L_TH_RES_SRV="Results (Per Server)"
        
        # Backstage
        L_BK_ENV="Execution Environment"
        L_BK_TOOLS="Tool Versions"
        L_BK_INPUT="Input Files"
        L_BK_CONF="Configuration Flags"
        L_BK_THR="Thresholds & Limits"
        L_BK_PERF="Performance Metrics"

    else
        # --- PORTUGUESE STRINGS (Default) ---
        L_RPT_TITLE="Relatório de Saúde DNS"
        L_RPT_SUBTITLE="Análise de Conectividade, Segurança e Consistência"
        
        # Tabs
        L_TAB_DASH="Visão Geral"
        L_TAB_SRV="Servidores"
        L_TAB_ZONE="Zonas"
        L_TAB_REC="Registros"
        L_TAB_BACK="Bastidores"
        
        # Card Titles
        L_CRD_NET="Saúde da Rede"
        L_CRD_STAB="Estabilidade do Serviço"
        L_CRD_SEC="Postura de Segurança"
        L_CRD_MOD="Padrões Modernos"
        
        # Card Tooltips/Desc
        L_DESC_NET="Conectividade e Latência"
        L_DESC_STAB="Taxa de Sucesso e Sincronismo"
        L_DESC_SEC="DNSSEC, TLS e Privacidade"
        L_DESC_MOD="EDNS, IPv6, DoH/DoT"
        
        # General Labels
        L_LBL_VERSION="Versão"
        L_LBL_EXECITON="Execução"
        L_LBL_DURATION="Duração"
        L_LBL_SCOPE="Escopo"
        L_LBL_SERVERS="Servidores"
        L_LBL_ZONES="Zonas"
        L_LBL_RECORDS="Registros"
        L_LBL_LEGEND="Legenda"
        
        # Table Headers (Servers)
        L_TH_SRV="Servidor"
        L_TH_GRP="Grupos"
        L_TH_PING="Ping (ICMP)"
        L_TH_HOPS="Hops"
        L_TH_LAT="Latência (ICMP)"
        L_TH_RESP="Tempo Resp."
        L_TH_P53="Porta 53"
        L_TH_P853="Porta 853"
        L_TH_VER="Versão (Bind)"
        L_TH_REC="Recursão"
        L_TH_EDNS="EDNS"
        L_TH_COOK="Cookie"
        L_TH_SEC="DNSSEC (Val)"
        L_TH_DOH="DoH (443)"
        L_TH_TLS="TLS (Hshake)"

        # Table Headers (Zones)
        L_TH_ZONE="Zona"
        L_TH_SOA="SOA Serial"
        L_TH_AXFR="AXFR Status"
        L_TH_SIG="DNSSEC Sig"
        
        # Table Headers (Records)
        L_TH_TYPE="Tipo"
        L_TH_RES_SRV="Resultados (Por Servidor)"
        
        # Backstage
        L_BK_ENV="Ambiente de Execução"
        L_BK_TOOLS="Versões das Ferramentas"
        L_BK_INPUT="Arquivos de Entrada"
        L_BK_CONF="Flags de Configuração"
        L_BK_THR="Limiares e Limites"
        L_BK_PERF="Métricas de Performance"
    fi
}
