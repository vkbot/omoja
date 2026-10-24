.class public Lcom/mega/update/info/ManifestInfo$DeviceInfo;
.super Ljava/lang/Object;
.source "ManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/info/ManifestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation


# instance fields
.field public base_version:Ljava/lang/String;

.field public basefile:Ljava/lang/String;

.field public build_date:Ljava/lang/String;

.field public build_time:Ljava/lang/String;

.field public build_version:Ljava/lang/String;

.field public child_id:I

.field public current_slot:Ljava/lang/String;

.field public current_vendor_id:Ljava/lang/String;

.field public current_version:Ljava/lang/String;

.field public delta:I

.field public devicename:Ljava/lang/String;

.field public filename:Ljava/lang/String;

.field public filesize:J

.field public ignore_same_version:Z

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/update/info/ManifestInfo$VendorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public multi:Z

.field public no_check_version:Z

.field public order:Ljava/lang/Integer;

.field public package_file:Ljava/lang/String;

.field public package_offset:J

.field public sha256:Ljava/lang/String;

.field public type_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
