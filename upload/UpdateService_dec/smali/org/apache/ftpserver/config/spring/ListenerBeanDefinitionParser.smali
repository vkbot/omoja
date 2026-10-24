.class public Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "ListenerBeanDefinitionParser.java"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    .line 50
    const-class v0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;

    .line 51
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    .line 50
    return-void
.end method

.method private parseDataConnection(Lorg/w3c/dom/Element;Lorg/apache/ftpserver/ssl/SslConfiguration;)Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 9
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "listenerSslConfiguration"    # Lorg/apache/ftpserver/ssl/SslConfiguration;

    .line 233
    new-instance v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;-><init>()V

    .line 235
    .local v0, "dc":Lorg/apache/ftpserver/DataConnectionConfigurationFactory;
    if-eqz p1, :cond_6

    .line 237
    const-string v1, "implicit-ssl"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setImplicitSsl(Z)V

    .line 240
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->parseSsl(Lorg/w3c/dom/Element;)Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1

    .line 242
    .local v1, "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    if-eqz v1, :cond_0

    .line 243
    iget-object v3, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    const-string v4, "SSL configuration found for the data connection"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V

    .line 247
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->getIdleTime()I

    move-result v3

    const-string v4, "idle-timeout"

    invoke-static {p1, v4, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setIdleTime(I)V

    .line 249
    const-string v3, "http://mina.apache.org/ftpserver/spring/v1"

    const-string v4, "active"

    invoke-static {p1, v3, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 251
    .local v4, "activeElm":Lorg/w3c/dom/Element;
    const-string v5, "ip-check"

    if-eqz v4, :cond_1

    .line 252
    const/4 v6, 0x1

    const-string v7, "enabled"

    invoke-static {v4, v7, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveEnabled(Z)V

    .line 254
    invoke-static {v4, v5, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveIpCheck(Z)V

    .line 256
    const-string v6, "local-port"

    invoke-static {v4, v6, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveLocalPort(I)V

    .line 259
    const-string v6, "local-address"

    invoke-static {v4, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "localAddress":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 262
    invoke-virtual {v0, v6}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveLocalAddress(Ljava/lang/String;)V

    .line 266
    .end local v6    # "localAddress":Ljava/lang/String;
    :cond_1
    const-string v6, "passive"

    invoke-static {p1, v3, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 268
    .local v3, "passiveElm":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_5

    .line 269
    const-string v6, "address"

    invoke-static {v3, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "address":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 272
    invoke-virtual {v0, v6}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setPassiveAddress(Ljava/lang/String;)V

    .line 275
    :cond_2
    const-string v7, "external-address"

    invoke-static {v3, v7}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "externalAddress":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 278
    invoke-virtual {v0, v7}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setPassiveExternalAddress(Ljava/lang/String;)V

    .line 281
    :cond_3
    const-string v8, "ports"

    invoke-static {v3, v8}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, "ports":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 283
    invoke-virtual {v0, v8}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setPassivePorts(Ljava/lang/String;)V

    .line 285
    :cond_4
    invoke-static {v3, v5, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setPassiveIpCheck(Z)V

    .line 288
    .end local v1    # "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    .end local v3    # "passiveElm":Lorg/w3c/dom/Element;
    .end local v4    # "activeElm":Lorg/w3c/dom/Element;
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "externalAddress":Ljava/lang/String;
    .end local v8    # "ports":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 291
    :cond_6
    if-eqz p2, :cond_7

    .line 292
    iget-object v1, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    .line 293
    const-string v2, "SSL configuration found for the listener, falling back for that for the data connection"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V

    .line 298
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v1

    return-object v1
.end method

.method private parseSsl(Lorg/w3c/dom/Element;)Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 12
    .param p1, "parent"    # Lorg/w3c/dom/Element;

    .line 148
    const-string v0, "http://mina.apache.org/ftpserver/spring/v1"

    const-string v1, "ssl"

    invoke-static {p1, v0, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 151
    .local v1, "sslElm":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_9

    .line 152
    new-instance v2, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;

    invoke-direct {v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;-><init>()V

    .line 154
    .local v2, "ssl":Lorg/apache/ftpserver/ssl/SslConfigurationFactory;
    const-string v3, "keystore"

    invoke-static {v1, v0, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 156
    .local v3, "keyStoreElm":Lorg/w3c/dom/Element;
    const-string v4, "algorithm"

    const-string v5, "type"

    const-string v6, "password"

    const-string v7, "file"

    if-eqz v3, :cond_3

    .line 157
    invoke-static {v3, v7}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseFile(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystoreFile(Ljava/io/File;)V

    .line 158
    invoke-static {v3, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystorePassword(Ljava/lang/String;)V

    .line 161
    invoke-static {v3, v5}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "type":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 163
    invoke-virtual {v2, v8}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystoreType(Ljava/lang/String;)V

    .line 166
    :cond_0
    const-string v9, "key-alias"

    invoke-static {v3, v9}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "keyAlias":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 169
    invoke-virtual {v2, v9}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeyAlias(Ljava/lang/String;)V

    .line 172
    :cond_1
    const-string v10, "key-password"

    invoke-static {v3, v10}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 174
    .local v10, "keyPassword":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 175
    invoke-virtual {v2, v10}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeyPassword(Ljava/lang/String;)V

    .line 178
    :cond_2
    invoke-static {v3, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "algorithm":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 181
    invoke-virtual {v2, v11}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystoreAlgorithm(Ljava/lang/String;)V

    .line 185
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "keyAlias":Ljava/lang/String;
    .end local v10    # "keyPassword":Ljava/lang/String;
    .end local v11    # "algorithm":Ljava/lang/String;
    :cond_3
    const-string v8, "truststore"

    invoke-static {v1, v0, v8}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 187
    .local v0, "trustStoreElm":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_5

    .line 188
    invoke-static {v0, v7}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseFile(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststoreFile(Ljava/io/File;)V

    .line 190
    invoke-static {v0, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststorePassword(Ljava/lang/String;)V

    .line 193
    invoke-static {v0, v5}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 195
    invoke-virtual {v2, v5}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststoreType(Ljava/lang/String;)V

    .line 198
    :cond_4
    invoke-static {v0, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "algorithm":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 201
    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststoreAlgorithm(Ljava/lang/String;)V

    .line 205
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_5
    const-string v4, "client-authentication"

    invoke-static {v1, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "clientAuthStr":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 208
    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setClientAuthentication(Ljava/lang/String;)V

    .line 211
    :cond_6
    const-string v5, "enabled-ciphersuites"

    invoke-static {v1, v5}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "enabledCiphersuites":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 214
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 217
    :cond_7
    const-string v6, "protocol"

    invoke-static {v1, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "protocol":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 220
    invoke-virtual {v2, v6}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setSslProtocol(Ljava/lang/String;)V

    .line 223
    :cond_8
    invoke-virtual {v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->createSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v7

    return-object v7

    .line 225
    .end local v0    # "trustStoreElm":Lorg/w3c/dom/Element;
    .end local v2    # "ssl":Lorg/apache/ftpserver/ssl/SslConfigurationFactory;
    .end local v3    # "keyStoreElm":Lorg/w3c/dom/Element;
    .end local v4    # "clientAuthStr":Ljava/lang/String;
    .end local v5    # "enabledCiphersuites":Ljava/lang/String;
    .end local v6    # "protocol":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 12
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 69
    const-class v0, Lorg/apache/ftpserver/listener/ListenerFactory;

    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v0

    .line 71
    .local v0, "factoryBuilder":Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    const-string v1, "port"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    nop

    .line 73
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->parseSsl(Lorg/w3c/dom/Element;)Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1

    .line 77
    .local v1, "ssl":Lorg/apache/ftpserver/ssl/SslConfiguration;
    if-eqz v1, :cond_1

    .line 78
    const-string v2, "sslConfiguration"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 81
    :cond_1
    const-string v2, "http://mina.apache.org/ftpserver/spring/v1"

    const-string v3, "data-connection"

    invoke-static {p1, v2, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 83
    .local v3, "dataConElm":Lorg/w3c/dom/Element;
    invoke-direct {p0, v3, v1}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->parseDataConnection(Lorg/w3c/dom/Element;Lorg/apache/ftpserver/ssl/SslConfiguration;)Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v4

    .line 84
    .local v4, "dc":Lorg/apache/ftpserver/DataConnectionConfiguration;
    const-string v5, "dataConnectionConfiguration"

    invoke-virtual {v0, v5, v4}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 86
    const-string v5, "idle-timeout"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    const/16 v6, 0x12c

    invoke-static {p1, v5, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "idleTimeout"

    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 91
    :cond_2
    const-string v5, "local-address"

    invoke-static {p1, v5}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "localAddress":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 94
    const-string v6, "serverAddress"

    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 96
    :cond_3
    const/4 v6, 0x0

    const-string v7, "implicit-ssl"

    invoke-static {p1, v7, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "implicitSsl"

    invoke-virtual {v0, v7, v6}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 99
    const-string v6, "blacklist"

    invoke-static {p1, v2, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 101
    .local v6, "blacklistElm":Lorg/w3c/dom/Element;
    const-string v7, "sessionFilter"

    if-eqz v6, :cond_4

    .line 102
    iget-object v8, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    .line 103
    const-string v9, "Element \'blacklist\' is deprecated, and may be removed in a future release. Please use \'remote-ip-filter\' instead. "

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 105
    :try_start_0
    new-instance v8, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;

    sget-object v9, Lorg/apache/ftpserver/ipfilter/IpFilterType;->DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    .line 106
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/lang/String;)V

    .line 107
    .local v8, "remoteIpFilter":Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;
    invoke-virtual {v0, v7, v8}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .end local v8    # "remoteIpFilter":Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid IP address or subnet in the \'blacklist\' element"

    invoke-direct {v7, v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 115
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_4
    :goto_0
    const-string v8, "remote-ip-filter"

    invoke-static {p1, v2, v8}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 117
    .local v2, "remoteIpFilterElement":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_6

    .line 118
    if-nez v6, :cond_5

    .line 122
    const-string v8, "type"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "filterType":Ljava/lang/String;
    :try_start_1
    new-instance v9, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;

    .line 125
    invoke-static {v8}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/ipfilter/IpFilterType;

    move-result-object v10

    .line 126
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/lang/String;)V

    .line 127
    .local v9, "remoteIpFilter":Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;
    nop

    .line 128
    invoke-virtual {v0, v7, v9}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    nop

    .end local v9    # "remoteIpFilter":Lorg/apache/ftpserver/ipfilter/RemoteIpFilter;
    goto :goto_1

    .line 129
    :catch_1
    move-exception v7

    .line 130
    .local v7, "e":Ljava/net/UnknownHostException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Invalid IP address or subnet in the \'remote-ip-filter\' element"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 119
    .end local v7    # "e":Ljava/net/UnknownHostException;
    .end local v8    # "filterType":Ljava/lang/String;
    :cond_5
    new-instance v7, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v8, "Element \'remote-ip-filter\' may not be used when \'blacklist\' element is specified. "

    invoke-direct {v7, v8}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 135
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v7

    .line 137
    .local v7, "factoryDefinition":Lorg/springframework/beans/factory/config/BeanDefinition;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getReaderContext()Lorg/springframework/beans/factory/xml/XmlReaderContext;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/springframework/beans/factory/xml/XmlReaderContext;->generateBeanName(Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "listenerFactoryName":Ljava/lang/String;
    new-instance v9, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    invoke-direct {v9, v7, v8}, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;-><init>(Lorg/springframework/beans/factory/config/BeanDefinition;Ljava/lang/String;)V

    .line 140
    .local v9, "factoryHolder":Lorg/springframework/beans/factory/config/BeanDefinitionHolder;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    .line 143
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v10

    const-string v11, "createListener"

    invoke-virtual {v10, v11}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryMethodName(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected getBeanClass(Lorg/w3c/dom/Element;)Ljava/lang/Class;
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
