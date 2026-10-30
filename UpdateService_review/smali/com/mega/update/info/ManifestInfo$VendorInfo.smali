.class public Lcom/mega/update/info/ManifestInfo$VendorInfo;
.super Ljava/lang/Object;
.source "ManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/info/ManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VendorInfo"
.end annotation


# instance fields
.field public base_version:Ljava/lang/String;

.field public basefile:Ljava/lang/String;

.field public build_date:Ljava/lang/String;

.field public build_time:Ljava/lang/String;

.field public build_version:Ljava/lang/String;

.field public delta:I

.field public filename:Ljava/lang/String;

.field public filesize:J

.field public package_offset:J

.field public sha256:Ljava/lang/String;

.field public vendor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
