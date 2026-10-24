.class public final Lorg/apache/logging/log4j/core/pattern/HtmlTextRenderer;
.super Ljava/lang/Object;
.source "HtmlTextRenderer.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/TextRenderer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "formats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .param p3, "styleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "output",
            "styleName"
        }
    .end annotation

    .line 31
    return-void
.end method

.method public render(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/StringBuilder;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 36
    return-void
.end method
