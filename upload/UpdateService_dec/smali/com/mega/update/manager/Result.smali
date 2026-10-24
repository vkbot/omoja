.class public Lcom/mega/update/manager/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public ret:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/mega/update/manager/Result;->ret:I

    .line 9
    iput-object p2, p0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 10
    return-void
.end method
