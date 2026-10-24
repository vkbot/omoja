.class public Lorg/apache/ftpserver/config/spring/FileSystemBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "FileSystemBeanDefinitionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "parserContext"    # Lorg/springframework/beans/factory/xml/ParserContext;
    .param p3, "builder"    # Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 54
    const-string v0, "case-insensitive"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    nop

    .line 56
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 55
    const-string v1, "caseInsensitive"

    invoke-virtual {p3, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 58
    :cond_0
    const-string v0, "create-home"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    nop

    .line 60
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 59
    const-string v1, "createHome"

    invoke-virtual {p3, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    .line 62
    :cond_1
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
            "Lorg/apache/ftpserver/ftplet/FileSystemFactory;",
            ">;"
        }
    .end annotation

    .line 44
    const-class v0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;

    return-object v0
.end method
