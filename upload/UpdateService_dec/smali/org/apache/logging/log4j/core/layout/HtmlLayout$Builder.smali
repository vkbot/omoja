.class public Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
.super Ljava/lang/Object;
.source "HtmlLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/HtmlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/layout/HtmlLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private datePattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fontName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fontSize:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private locationInfo:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private timezone:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->locationInfo:Z

    .line 390
    const-string v0, "Log4j Log Messages"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->title:Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->contentType:Ljava/lang/String;

    .line 396
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->charset:Ljava/nio/charset/Charset;

    .line 399
    sget-object v1, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->SMALL:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    iput-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->fontSize:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    .line 402
    const-string v1, "arial,sans-serif"

    iput-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->fontName:Ljava/lang/String;

    .line 405
    const-string v1, "JVM_ELAPSE_TIME"

    iput-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->datePattern:Ljava/lang/String;

    .line 408
    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->timezone:Ljava/lang/String;

    .line 412
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/core/layout/HtmlLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/core/layout/HtmlLayout$1;

    .line 385
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 385
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->build()Lorg/apache/logging/log4j/core/layout/HtmlLayout;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/layout/HtmlLayout;
    .locals 12

    .line 457
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->contentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/html; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->contentType:Ljava/lang/String;

    .line 460
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/layout/HtmlLayout;

    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->locationInfo:Z

    iget-object v3, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->title:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->contentType:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->charset:Ljava/nio/charset/Charset;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->fontName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->fontSize:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->getFontSize()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->fontSize:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    .line 461
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->larger()Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;->getFontSize()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->datePattern:Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->timezone:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/layout/HtmlLayout$1;)V

    .line 460
    return-object v0
.end method

.method public setDatePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "datePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datePattern"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->datePattern:Ljava/lang/String;

    .line 446
    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timezone"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->timezone:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "charset"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->charset:Ljava/nio/charset/Charset;

    .line 431
    return-object p0
.end method

.method public withContentType(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contentType"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->contentType:Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public withFontName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "fontName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fontName"
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->fontName:Ljava/lang/String;

    .line 441
    return-object p0
.end method

.method public withFontSize(Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "fontSize"    # Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fontSize"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->fontSize:Lorg/apache/logging/log4j/core/layout/HtmlLayout$FontSize;

    .line 436
    return-object p0
.end method

.method public withLocationInfo(Z)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "locationInfo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "locationInfo"
        }
    .end annotation

    .line 415
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->locationInfo:Z

    .line 416
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "title"
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/HtmlLayout$Builder;->title:Ljava/lang/String;

    .line 421
    return-object p0
.end method
