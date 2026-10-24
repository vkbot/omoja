.class public Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;
.super Ljava/lang/Object;
.source "MegaFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/text/format/MegaFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MegaBytesResult"
.end annotation


# instance fields
.field public final roundedBytes:J

.field public final units:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/text/format/Formatter$BytesResult;)V
    .locals 2
    .param p1, "bytesResult"    # Landroid/text/format/Formatter$BytesResult;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;->value:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    iput-object v0, p0, Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;->units:Ljava/lang/String;

    .line 17
    iget-wide v0, p1, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    iput-wide v0, p0, Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;->roundedBytes:J

    .line 18
    return-void
.end method
