.class public Lcom/mega/update/info/ManifestInfo;
.super Ljava/lang/Object;
.source "ManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/info/ManifestInfo$VendorInfo;,
        Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    }
.end annotation


# instance fields
.field public base_version:Ljava/lang/String;

.field public delta:I

.field public label:Ljava/lang/String;

.field public non_reboot:Z

.field public packaging_date:Ljava/lang/String;

.field public packaging_time:Ljava/lang/String;

.field public softwareinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/update/info/ManifestInfo$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public target_version:Ljava/lang/String;

.field public together:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
