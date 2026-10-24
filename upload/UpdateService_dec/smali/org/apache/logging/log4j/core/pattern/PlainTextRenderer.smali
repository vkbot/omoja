.class public final Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;
.super Ljava/lang/Object;
.source "PlainTextRenderer.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/TextRenderer;


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->INSTANCE:Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    return-object v0
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

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
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

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 38
    return-void
.end method
