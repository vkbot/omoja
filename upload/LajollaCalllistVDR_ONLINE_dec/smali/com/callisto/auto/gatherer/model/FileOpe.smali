.class public Lcom/callisto/auto/gatherer/model/FileOpe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_file_opt_ns:Ljava/lang/String;

.field private b_file_path_ns:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/FileOpe;->b_file_path_ns:Ljava/lang/String;

    iput-object p2, p0, Lcom/callisto/auto/gatherer/model/FileOpe;->b_file_opt_ns:Ljava/lang/String;

    return-void
.end method
