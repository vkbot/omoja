.class public Lcom/callisto/auto/gatherer/model/DiskLowRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_coll_time:Ljava/lang/String;

.field private b_disk_low:Ljava/lang/String;

.field private b_vdr_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/DiskLowRequest;->b_disk_low:Ljava/lang/String;

    iput-object p2, p0, Lcom/callisto/auto/gatherer/model/DiskLowRequest;->b_coll_time:Ljava/lang/String;

    iput-object p3, p0, Lcom/callisto/auto/gatherer/model/DiskLowRequest;->b_vdr_type:Ljava/lang/String;

    return-void
.end method
