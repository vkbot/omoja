.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;
    }
.end annotation


# instance fields
.field public final indent:I

.field public final overflow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

.field public final width:I


# direct methods
.method public constructor <init>(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "indent"    # I
    .param p3, "overflow"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "width",
            "indent",
            "overflow"
        }
    .end annotation

    .line 4141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4142
    iput p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->width:I

    .line 4143
    iput p2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->indent:I

    .line 4144
    const-string v0, "overflow"

    invoke-static {p3, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column;->overflow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Column$Overflow;

    .line 4145
    return-void
.end method
