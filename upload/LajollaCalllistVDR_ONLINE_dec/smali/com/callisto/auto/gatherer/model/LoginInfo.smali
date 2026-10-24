.class public Lcom/callisto/auto/gatherer/model/LoginInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_login_info:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/LoginInfo;->b_login_info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLoginInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/LoginInfo;->b_login_info:Ljava/lang/String;

    return-object v0
.end method

.method public isLoginInfoEqual(Lcom/callisto/auto/gatherer/model/LoginInfo;Lcom/callisto/auto/gatherer/model/LoginInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/LoginInfo;->getLoginInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/LoginInfo;->getLoginInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
