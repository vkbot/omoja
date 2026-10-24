.class public Lcom/mega/update/info/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateInfo"


# instance fields
.field public actions:[I

.field public encInfo:Ljava/lang/String;

.field public errCode:I

.field public errDesc:Ljava/lang/String;

.field public filename:Ljava/lang/String;

.field public force:Z

.field public progress:I

.field public running:Z

.field public state:I

.field public step:I


# direct methods
.method public constructor <init>(ZII[IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "state"    # I
    .param p3, "step"    # I
    .param p4, "actions"    # [I
    .param p5, "errCode"    # I
    .param p6, "errDesc"    # Ljava/lang/String;
    .param p7, "progress"    # I
    .param p8, "filename"    # Ljava/lang/String;
    .param p9, "encInfo"    # Ljava/lang/String;
    .param p10, "force"    # Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/mega/update/info/UpdateInfo;->running:Z

    .line 20
    iput p2, p0, Lcom/mega/update/info/UpdateInfo;->state:I

    .line 21
    iput p3, p0, Lcom/mega/update/info/UpdateInfo;->step:I

    .line 22
    iput-object p4, p0, Lcom/mega/update/info/UpdateInfo;->actions:[I

    .line 23
    iput p5, p0, Lcom/mega/update/info/UpdateInfo;->errCode:I

    .line 24
    iput-object p6, p0, Lcom/mega/update/info/UpdateInfo;->errDesc:Ljava/lang/String;

    .line 25
    iput p7, p0, Lcom/mega/update/info/UpdateInfo;->progress:I

    .line 26
    iput-object p8, p0, Lcom/mega/update/info/UpdateInfo;->filename:Ljava/lang/String;

    .line 27
    iput-object p9, p0, Lcom/mega/update/info/UpdateInfo;->encInfo:Ljava/lang/String;

    .line 28
    iput-boolean p10, p0, Lcom/mega/update/info/UpdateInfo;->force:Z

    .line 29
    return-void
.end method
