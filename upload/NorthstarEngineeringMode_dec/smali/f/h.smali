.class public final synthetic Lf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf/h;->a:J

    iput-wide p3, p0, Lf/h;->b:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Landroid/net/wifi/ScanResult;

    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lf/h;->a:J

    sub-long/2addr v2, v0

    iget-wide p0, p0, Lf/h;->b:J

    cmp-long p0, v2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
