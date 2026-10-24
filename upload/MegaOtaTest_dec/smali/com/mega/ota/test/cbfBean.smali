.class public Lcom/mega/ota/test/cbfBean;
.super Ljava/lang/Object;
.source "cbfBean.java"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "mFilePath"    # Ljava/lang/String;
    .param p2, "mFileName"    # Ljava/lang/String;
    .param p3, "selected"    # Z

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mega/ota/test/cbfBean;->mFilePath:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/mega/ota/test/cbfBean;->mFileName:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lcom/mega/ota/test/cbfBean;->selected:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getmFileName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mega/ota/test/cbfBean;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getmFilePath()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mega/ota/test/cbfBean;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/mega/ota/test/cbfBean;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/mega/ota/test/cbfBean;->selected:Z

    .line 18
    return-void
.end method

.method public setmFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFileName"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/mega/ota/test/cbfBean;->mFileName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setmFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFilePath"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/mega/ota/test/cbfBean;->mFilePath:Ljava/lang/String;

    .line 26
    return-void
.end method
