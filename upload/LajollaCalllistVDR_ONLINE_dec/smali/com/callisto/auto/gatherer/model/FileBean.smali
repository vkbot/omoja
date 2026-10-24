.class public Lcom/callisto/auto/gatherer/model/FileBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_file_act:Ljava/lang/String;

.field private b_file_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFileOpe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/FileBean;->b_file_act:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/FileBean;->b_file_path:Ljava/lang/String;

    return-void
.end method
