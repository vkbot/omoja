.class final Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$StringValue;
.super Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;
.source "SimpleLiteralPatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringValue"
.end annotation


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "literal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "literal"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter;-><init>(Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$1;)V

    .line 110
    iput-object p1, p0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$StringValue;->literal:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method format(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/SimpleLiteralPatternConverter$StringValue;->literal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    return-void
.end method
