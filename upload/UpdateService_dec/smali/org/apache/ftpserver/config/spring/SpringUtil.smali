.class public Lorg/apache/ftpserver/config/spring/SpringUtil;
.super Ljava/lang/Object;
.source "SpringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 81
    .local v2, "element":Lorg/w3c/dom/Element;
    if-eqz p1, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    .line 83
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 86
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_0
    goto :goto_0

    .line 84
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    return-object v2

    .line 88
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getChildElementText(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 106
    invoke-static {p0}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 109
    .local v2, "element":Lorg/w3c/dom/Element;
    if-eqz p1, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    .line 111
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 114
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_0
    goto :goto_0

    .line 112
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    invoke-static {v2}, Lorg/springframework/util/xml/DomUtils;->getTextValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 116
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 5
    .param p0, "elm"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 54
    .local v1, "childs":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 55
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 57
    .local v3, "child":Lorg/w3c/dom/Node;
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 58
    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v3    # "child":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 162
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 165
    :cond_0
    return p2
.end method

.method public static parseFile(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;

    .line 231
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/io/File;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;

    .line 248
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v2, "Unknown host"

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 255
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;

    .line 180
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 197
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 200
    :cond_0
    return p2
.end method

.method public static parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;
    .locals 5
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p2, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 133
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 135
    .local v0, "springElm":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "ln":Ljava/lang/String;
    const-string v2, "bean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p1}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v2

    .line 138
    invoke-virtual {p2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v3

    .line 137
    invoke-virtual {v2, v0, v3}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseBeanDefinitionElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    move-result-object v2

    return-object v2

    .line 139
    :cond_0
    const-string v2, "ref"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {p1}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v2

    .line 141
    invoke-virtual {p2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v3

    .line 140
    invoke-virtual {v2, v0, v3}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parsePropertySubElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 143
    :cond_1
    new-instance v2, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown spring element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;

    .line 214
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "attrName"    # Ljava/lang/String;

    .line 268
    invoke-static {p0, p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
