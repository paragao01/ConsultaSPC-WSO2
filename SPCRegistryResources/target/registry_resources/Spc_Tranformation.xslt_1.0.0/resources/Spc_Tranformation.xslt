<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<jsonObject>
			<solicitacao>
				<xsl:if test="//SPCA-XML//VERSAO/text()">
					<codigo>
						<xsl:value-of select="20151030" />
					</codigo>
				</xsl:if>
				<xsl:if test="//SPCA-XML/SOLICITACAO/S-CODIGO/text()">
					<codigo>
						<xsl:value-of select="//S-CODIGO" />
					</codigo>
				</xsl:if>
				<xsl:if test="//SPCA-XML/SOLICITACAO/S-SENHA/text()">
					<codigo>
						<xsl:value-of select="//S-SENHA" />
					</codigo>
				</xsl:if>
				<xsl:if test="//SPCA-XML/SOLICITACAO/S-CONSULTA/text()">
					<consulta>
						<xsl:value-of select="310" />
					</consulta>
				</xsl:if>
				<xsl:if test="//SPCA-XML/SOLICITACAO/S-SOLICITANTE/text()">
					<solicitante>
						<xsl:value-of select="RJ001" />
					</solicitante>
				</xsl:if>
				<xsl:if test="//SPCA-XML/SOLICITACAO/S-CPF/text()">
					<codigo>
						<xsl:value-of select="//S-CPF" />
					</codigo>
				</xsl:if>
				<xsl:if test="//SPCA-XML/SOLICITACAO/S-TIPO-CREDITO/text()">
					<solicitante>
						<xsl:value-of select="XX" />
					</solicitante>
				</xsl:if>
				<S-ACERTA-PRODUTO>
					<xsl:if
						test="//SPCA-XML/SOLICITACAO/S-ACERTA-PRODUTO/S-ACERTA-SCORE/text()">
						<consulta>
							<xsl:value-of select="N" />
						</consulta>
					</xsl:if>
					<xsl:if
						test="//SPCA-XML/SOLICITACAO/S-ACERTA-PRODUTO/S-ACERTA-SCORE-12/text()">
						<consulta>
							<xsl:value-of select="N" />
						</consulta>
					</xsl:if>
					<xsl:if
						test="//SPCA-XML/SOLICITACAO/S-ACERTA-PRODUTO/S-ACERTA-SCORE-CC/text()">
						<consulta>
							<xsl:value-of select="N" />
						</consulta>
					</xsl:if>
					<xsl:if
						test="//SPCA-XML/SOLICITACAO/S-ACERTA-PRODUTO/S-ACERTA-CHEQUE/text()">
						<consulta>
							<xsl:value-of select="N" />
						</consulta>
					</xsl:if>
				</S-ACERTA-PRODUTO>
			</solicitacao>
			<xsl:processing-instruction	name="xml-multiple">
			consultaResumo
			</xsl:processing-instruction>
			<xsl:for-each
				select="//SPCA-XML/RESPOSTA/SPCA-111-CONSULTA/SPCA-111-RESUMO/text()">
				<consultaResumo>
					<xsl:if test="SPCA-111-TOTAL/text()">
						<total>
							<xsl:value-of select="SPCA-111-TOTAL" />
						</total>
					</xsl:if>
					<xsl:if test="//SPCA-111-DATA-1/text()">
						<data>
							<xsl:value-of select="SPCA-111-DATA-1/text()" />
						</data>
					</xsl:if>
				</consultaResumo>
			</xsl:for-each>
			<xsl:if test="//E_RETORNO/item/TYPE/text()">
				<retorno>
					<tipo>
						<xsl:value-of
							select="(//E_RETORNO/item/TYPE/text())[1]" />
					</tipo>
					<xsl:if test="//E_RETORNO/item/ID/text()">
						<id>
							<xsl:value-of
								select="(//E_RETORNO/item/ID/text())[1]" />
						</id>
					</xsl:if>
					<xsl:if test="//E_RETORNO/item/NUMBER/text()">
						<numero>
							<xsl:value-of
								select="(//E_RETORNO/item/NUMBER/text())[1]" />
						</numero>
					</xsl:if>
					<xsl:if test="//E_RETORNO/item/MESSAGE/text()">
						<mensagem>
							<xsl:value-of
								select="(//E_RETORNO/item/MESSAGE/text())[1]" />
						</mensagem>
					</xsl:if>
				</retorno>
			</xsl:if>
		</jsonObject>
	</xsl:template>
</xsl:stylesheet>