.class public final Lg1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:[B

.field public final synthetic r:Lcom/mega/engineeringmode/function/StrActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/StrActivity;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/v;->r:Lcom/mega/engineeringmode/function/StrActivity;

    iput-object p2, p0, Lg1/v;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    sget v0, Lcom/mega/engineeringmode/function/StrActivity;->y:I

    iget-object v0, p0, Lg1/v;->r:Lcom/mega/engineeringmode/function/StrActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSTRResp value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg1/v;->c:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Lmega/log/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    const/4 v3, 0x6

    const-string v4, "StrActivity"

    const/4 v5, 0x2

    if-ne v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSTRResp suc "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-static {v2, v3, v4}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "length = 3  onSTRResp suc :  "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, p0, v5

    invoke-static {v2, v6, v4}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    aget-byte p0, p0, v5

    if-ne p0, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/mega/engineeringmode/function/StrActivity;->p(Z)V

    goto :goto_0

    :cond_1
    array-length v2, p0

    const/4 v7, 0x4

    if-ne v2, v7, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "length = 4 onSTRResp suc "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v7, p0, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, p0, v6

    invoke-static {v2, v7, v4}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    aget-byte v2, p0, v5

    if-nez v2, :cond_2

    aget-byte v2, p0, v6

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/mega/engineeringmode/function/StrActivity;->p(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/mega/engineeringmode/function/StrActivity;->p(Z)V

    aget-byte v1, p0, v5

    if-nez v1, :cond_3

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/StrActivity;->o(I)V

    goto :goto_0

    :cond_3
    aget-byte v1, p0, v6

    and-int/lit16 v1, v1, 0xff

    const-string v2, " hour  "

    invoke-static {v2, v1, v4}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    aget-byte p0, p0, v5

    mul-int/lit16 p0, p0, 0x100

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/StrActivity;->o(I)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSTRResp fail "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p0, p0, v5

    invoke-static {v0, p0, v4}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
