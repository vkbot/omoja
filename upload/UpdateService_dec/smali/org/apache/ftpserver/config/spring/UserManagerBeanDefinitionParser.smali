.class public Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "UserManagerBeanDefinitionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    return-void
.end method

.method private getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "elmName"    # Ljava/lang/String;

    .line 131
    const-string v0, "http://mina.apache.org/ftpserver/spring/v1"

    invoke-static {p1, v0, p2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElementText(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 7
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 56
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file-user-manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-class v0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    .local v0, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 59
    .end local v0    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;

    .line 61
    .restart local v0    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v1

    .line 65
    .local v1, "factoryBuilder":Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    const-string v2, "encrypt-passwords"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "encryptionStrategy":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "passwordEncryptor"

    if-nez v3, :cond_3

    const-string v3, "md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    const-string v3, "salted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    new-instance v3, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;-><init>()V

    invoke-virtual {v1, v4, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_2

    .line 73
    :cond_2
    new-instance v3, Lorg/apache/ftpserver/usermanager/ClearTextPasswordEncryptor;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/ClearTextPasswordEncryptor;-><init>()V

    invoke-virtual {v1, v4, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    new-instance v3, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;-><init>()V

    invoke-virtual {v1, v4, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 77
    .end local v2    # "encryptionStrategy":Ljava/lang/String;
    :cond_4
    :goto_2
    const-class v2, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    if-ne v0, v2, :cond_6

    .line 78
    const-string v2, "file"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 79
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 81
    :cond_5
    const-string v2, "url"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 82
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto/16 :goto_4

    .line 85
    :cond_6
    const-string v2, "http://mina.apache.org/ftpserver/spring/v1"

    const-string v3, "data-source"

    invoke-static {p1, v2, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 89
    .local v2, "dsElm":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 91
    .local v3, "springElm":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bean"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 92
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v4

    .line 93
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v5

    .line 92
    invoke-virtual {v4, v3, v5}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseBeanDefinitionElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    move-result-object v4

    .local v4, "o":Ljava/lang/Object;
    goto :goto_3

    .line 96
    .end local v4    # "o":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v4

    .line 97
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v5

    .line 96
    invoke-virtual {v4, v3, v5}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parsePropertySubElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/Object;

    move-result-object v4

    .line 100
    .restart local v4    # "o":Ljava/lang/Object;
    :goto_3
    const-string v5, "dataSource"

    invoke-virtual {v1, v5, v4}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 102
    const-string v5, "insert-user"

    invoke-direct {p0, p1, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sqlUserInsert"

    invoke-virtual {v1, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 104
    const-string v5, "update-user"

    invoke-direct {p0, p1, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sqlUserUpdate"

    invoke-virtual {v1, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 106
    const-string v5, "delete-user"

    invoke-direct {p0, p1, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sqlUserDelete"

    invoke-virtual {v1, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 108
    const-string v5, "select-user"

    invoke-direct {p0, p1, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sqlUserSelect"

    invoke-virtual {v1, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 110
    const-string v5, "select-all-users"

    invoke-direct {p0, p1, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sqlUserSelectAll"

    invoke-virtual {v1, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 112
    nop

    .line 113
    const-string v5, "is-admin"

    invoke-direct {p0, p1, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    const-string v6, "sqlUserAdmin"

    invoke-virtual {v1, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 114
    const-string v5, "authenticate"

    invoke-direct {p0, p1, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sqlUserAuthenticate"

    invoke-virtual {v1, v6, v5}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 118
    .end local v2    # "dsElm":Lorg/w3c/dom/Element;
    .end local v3    # "springElm":Lorg/w3c/dom/Element;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v2

    .line 119
    .local v2, "factoryDefinition":Lorg/springframework/beans/factory/config/BeanDefinition;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getReaderContext()Lorg/springframework/beans/factory/xml/XmlReaderContext;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/springframework/beans/factory/xml/XmlReaderContext;->generateBeanName(Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "factoryId":Ljava/lang/String;
    new-instance v4, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    invoke-direct {v4, v2, v3}, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;-><init>(Lorg/springframework/beans/factory/config/BeanDefinition;Ljava/lang/String;)V

    .line 122
    .local v4, "factoryHolder":Lorg/springframework/beans/factory/config/BeanDefinitionHolder;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    .line 125
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v5

    const-string v6, "createUserManager"

    invoke-virtual {v5, v6}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryMethodName(Ljava/lang/String;)V

    .line 128
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

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
