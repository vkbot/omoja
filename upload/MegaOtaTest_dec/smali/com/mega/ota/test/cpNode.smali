.class public Lcom/mega/ota/test/cpNode;
.super Ljava/lang/Object;
.source "cpNode.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/mega/ota/test/cpNode;->code:I

    .line 9
    iput-object p2, p0, Lcom/mega/ota/test/cpNode;->msg:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mega/ota/test/cpNode;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mega/ota/test/cpNode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 17
    iput p1, p0, Lcom/mega/ota/test/cpNode;->code:I

    .line 18
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/mega/ota/test/cpNode;->msg:Ljava/lang/String;

    .line 26
    return-void
.end method
