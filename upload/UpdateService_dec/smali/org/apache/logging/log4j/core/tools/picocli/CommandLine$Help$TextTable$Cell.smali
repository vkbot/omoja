.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# instance fields
.field public final column:I

.field public final row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "column"    # I
    .param p2, "row"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "column",
            "row"
        }
    .end annotation

    .line 3902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;->column:I

    iput p2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$TextTable$Cell;->row:I

    return-void
.end method
