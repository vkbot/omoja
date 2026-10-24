.class public Lorg/apache/ftpserver/config/spring/CommandFactoryBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "CommandFactoryBeanDefinitionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 8
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 59
    const-class v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;

    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v0

    .line 61
    .local v0, "factoryBuilder":Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    new-instance v1, Lorg/springframework/beans/factory/support/ManagedMap;

    invoke-direct {v1}, Lorg/springframework/beans/factory/support/ManagedMap;-><init>()V

    .line 63
    .local v1, "commands":Lorg/springframework/beans/factory/support/ManagedMap;
    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "childs":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 66
    .local v4, "commandElm":Lorg/w3c/dom/Element;
    const-string v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "name":Ljava/lang/String;
    invoke-static {v4, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    move-result-object v6

    .line 69
    .local v6, "bean":Ljava/lang/Object;
    invoke-virtual {v1, v5, v6}, Lorg/springframework/beans/factory/support/ManagedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v4    # "commandElm":Lorg/w3c/dom/Element;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "bean":Ljava/lang/Object;
    goto :goto_0

    .line 72
    :cond_0
    const-string v3, "commandMap"

    invoke-virtual {v0, v3, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 74
    const-string v3, "use-default"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    nop

    .line 76
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 75
    const-string v4, "useDefaultCommands"

    invoke-virtual {v0, v4, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 79
    :cond_1
    invoke-virtual {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v3

    .line 80
    .local v3, "factoryDefinition":Lorg/springframework/beans/factory/config/BeanDefinition;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getReaderContext()Lorg/springframework/beans/factory/xml/XmlReaderContext;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/springframework/beans/factory/xml/XmlReaderContext;->generateBeanName(Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "factoryId":Ljava/lang/String;
    new-instance v5, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    invoke-direct {v5, v3, v4}, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;-><init>(Lorg/springframework/beans/factory/config/BeanDefinition;Ljava/lang/String;)V

    .line 83
    .local v5, "factoryHolder":Lorg/springframework/beans/factory/config/BeanDefinitionHolder;
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/ftpserver/config/spring/CommandFactoryBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    .line 86
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v6

    const-string v7, "createCommandFactory"

    invoke-virtual {v6, v7}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryMethodName(Ljava/lang/String;)V

    .line 89
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
            "Lorg/apache/ftpserver/command/CommandFactory;",
            ">;"
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
