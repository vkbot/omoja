.class public Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "ServerBeanDefinitionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    return-void
.end method

.method private parseFtplets(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;
    .locals 6
    .param p1, "childElm"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lorg/springframework/beans/factory/xml/ParserContext;",
            "Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "childs":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v2

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 198
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v1, v3}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseMapElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 200
    :cond_0
    new-instance v1, Lorg/springframework/beans/factory/support/ManagedMap;

    invoke-direct {v1}, Lorg/springframework/beans/factory/support/ManagedMap;-><init>()V

    .line 201
    .local v1, "ftplets":Lorg/springframework/beans/factory/support/ManagedMap;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 202
    .local v3, "ftpletElm":Lorg/w3c/dom/Element;
    nop

    .line 203
    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-static {v3, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    move-result-object v5

    .line 203
    invoke-virtual {v1, v4, v5}, Lorg/springframework/beans/factory/support/ManagedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v3    # "ftpletElm":Lorg/w3c/dom/Element;
    goto :goto_0

    .line 208
    :cond_1
    return-object v1
.end method

.method private parseListeners(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;
    .locals 8
    .param p1, "listenersElm"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lorg/springframework/beans/factory/xml/ParserContext;",
            "Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/springframework/beans/factory/support/ManagedMap;

    invoke-direct {v0}, Lorg/springframework/beans/factory/support/ManagedMap;-><init>()V

    .line 221
    .local v0, "listeners":Lorg/springframework/beans/factory/support/ManagedMap;
    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, "childs":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 224
    .local v3, "listenerElm":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 225
    .local v4, "listener":Ljava/lang/Object;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "ln":Ljava/lang/String;
    const-string v6, "nio-listener"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v6

    .line 228
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v7

    .line 227
    invoke-virtual {v6, v3, v7}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    move-result-object v4

    goto :goto_1

    .line 229
    :cond_0
    const-string v6, "listener"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    invoke-static {v3, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    move-result-object v4

    .line 237
    :goto_1
    const-string v6, "name"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0, v6, v4}, Lorg/springframework/beans/factory/support/ManagedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v3    # "listenerElm":Lorg/w3c/dom/Element;
    .end local v4    # "listener":Ljava/lang/Object;
    .end local v5    # "ln":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_0

    .line 233
    .restart local v3    # "listenerElm":Lorg/w3c/dom/Element;
    .restart local v4    # "listener":Ljava/lang/Object;
    .restart local v5    # "ln":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown listener element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    .end local v3    # "listenerElm":Lorg/w3c/dom/Element;
    .end local v4    # "listener":Ljava/lang/Object;
    .end local v5    # "ln":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private parseMessageResource(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Lorg/apache/ftpserver/message/MessageResource;
    .locals 4
    .param p1, "childElm"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 166
    new-instance v0, Lorg/apache/ftpserver/message/MessageResourceFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/message/MessageResourceFactory;-><init>()V

    .line 168
    .local v0, "mr":Lorg/apache/ftpserver/message/MessageResourceFactory;
    const-string v1, "languages"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "langString":Ljava/lang/String;
    const-string v2, "[\\s,]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "languages":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/ftpserver/message/MessageResourceFactory;->setLanguages(Ljava/util/List;)V

    .line 176
    .end local v1    # "langString":Ljava/lang/String;
    .end local v2    # "languages":[Ljava/lang/String;
    :cond_0
    const-string v1, "directory"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    new-instance v2, Ljava/io/File;

    .line 178
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v2}, Lorg/apache/ftpserver/message/MessageResourceFactory;->setCustomMessageDirectory(Ljava/io/File;)V

    .line 182
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ftpserver/message/MessageResourceFactory;->createMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 8
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 66
    const-class v0, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v0

    .line 68
    .local v0, "factoryBuilder":Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "childs":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 70
    .local v3, "childElm":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "childName":Ljava/lang/String;
    const-string v5, "listeners"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    invoke-direct {p0, v3, p2, p3}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->parseListeners(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;

    move-result-object v6

    .line 75
    .local v6, "listeners":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 76
    invoke-virtual {v0, v5, v6}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 78
    .end local v6    # "listeners":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_0
    goto/16 :goto_2

    :cond_1
    const-string v5, "ftplets"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-direct {p0, v3, p2, p3}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->parseFtplets(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/util/Map;

    move-result-object v6

    .line 80
    .local v6, "ftplets":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {v0, v5, v6}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 81
    .end local v6    # "ftplets":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto/16 :goto_2

    :cond_2
    const-string v5, "file-user-manager"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "userManager"

    if-nez v5, :cond_9

    .line 82
    const-string v5, "db-user-manager"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_1

    .line 87
    :cond_3
    const-string v5, "user-manager"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    nop

    .line 89
    invoke-static {v3, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    move-result-object v5

    .line 88
    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto/16 :goto_2

    .line 91
    :cond_4
    const-string v5, "native-filesystem"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "fileSystem"

    if-eqz v5, :cond_5

    .line 92
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v5

    .line 94
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v7

    .line 93
    invoke-virtual {v5, v3, v7}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    move-result-object v5

    .line 95
    .local v5, "fileSystem":Ljava/lang/Object;
    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 96
    .end local v5    # "fileSystem":Ljava/lang/Object;
    goto :goto_2

    :cond_5
    const-string v5, "filesystem"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 97
    nop

    .line 98
    invoke-static {v3, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    move-result-object v5

    .line 97
    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_2

    .line 100
    :cond_6
    const-string v5, "commands"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 101
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v5

    .line 103
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v6

    .line 102
    invoke-virtual {v5, v3, v6}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    move-result-object v5

    .line 104
    .local v5, "commandFactory":Ljava/lang/Object;
    const-string v6, "commandFactory"

    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 105
    .end local v5    # "commandFactory":Ljava/lang/Object;
    goto :goto_2

    :cond_7
    const-string v5, "messages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 106
    invoke-direct {p0, v3, p2, p3}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->parseMessageResource(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v5

    .line 108
    .local v5, "mr":Lorg/apache/ftpserver/message/MessageResource;
    const-string v6, "messageResource"

    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 110
    .end local v5    # "mr":Lorg/apache/ftpserver/message/MessageResource;
    goto :goto_2

    .line 111
    :cond_8
    new-instance v2, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown configuration name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_9
    :goto_1
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v5

    .line 85
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v7

    .line 84
    invoke-virtual {v5, v3, v7}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseCustomElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinition;

    move-result-object v5

    .line 86
    .local v5, "userManager":Ljava/lang/Object;
    invoke-virtual {v0, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 87
    .end local v5    # "userManager":Ljava/lang/Object;
    nop

    .line 114
    .end local v3    # "childElm":Lorg/w3c/dom/Element;
    .end local v4    # "childName":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 117
    :cond_a
    new-instance v2, Lorg/apache/ftpserver/ConnectionConfigFactory;

    invoke-direct {v2}, Lorg/apache/ftpserver/ConnectionConfigFactory;-><init>()V

    .line 118
    .local v2, "connectionConfig":Lorg/apache/ftpserver/ConnectionConfigFactory;
    const-string v3, "max-logins"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 119
    invoke-static {p1, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxLogins(I)V

    .line 122
    :cond_b
    const-string v3, "max-threads"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 123
    invoke-static {p1, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxThreads(I)V

    .line 126
    :cond_c
    const-string v3, "max-anon-logins"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 127
    invoke-static {p1, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxAnonymousLogins(I)V

    .line 130
    :cond_d
    const-string v3, "anon-enabled"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 131
    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setAnonymousLoginEnabled(Z)V

    .line 134
    :cond_e
    const-string v3, "max-login-failures"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 135
    invoke-static {p1, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setMaxLoginFailures(I)V

    .line 138
    :cond_f
    const-string v3, "login-failure-delay"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 139
    invoke-static {p1, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/ConnectionConfigFactory;->setLoginFailureDelay(I)V

    .line 143
    :cond_10
    invoke-virtual {v2}, Lorg/apache/ftpserver/ConnectionConfigFactory;->createConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v3

    const-string v4, "connectionConfig"

    invoke-virtual {v0, v4, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 146
    invoke-virtual {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v3

    .line 148
    .local v3, "factoryDefinition":Lorg/springframework/beans/factory/config/BeanDefinition;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getReaderContext()Lorg/springframework/beans/factory/xml/XmlReaderContext;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/springframework/beans/factory/xml/XmlReaderContext;->generateBeanName(Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "factoryName":Ljava/lang/String;
    new-instance v5, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    invoke-direct {v5, v3, v4}, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;-><init>(Lorg/springframework/beans/factory/config/BeanDefinition;Ljava/lang/String;)V

    .line 151
    .local v5, "factoryHolder":Lorg/springframework/beans/factory/config/BeanDefinitionHolder;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    .line 154
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v6

    const-string v7, "createServer"

    invoke-virtual {v6, v7}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryMethodName(Ljava/lang/String;)V

    .line 157
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
            "+",
            "Lorg/apache/ftpserver/FtpServer;",
            ">;"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
