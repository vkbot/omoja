.class public Lcom/mega/nexus/text/format/MegaFormatter;
.super Ljava/lang/Object;
.source "MegaFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "sizeBytes"    # J
    .param p3, "flags"    # I

    .line 22
    invoke-static {p0, p1, p2, p3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 23
    .local v0, "result":Landroid/text/format/Formatter$BytesResult;
    new-instance v1, Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;

    invoke-direct {v1, v0}, Lcom/mega/nexus/text/format/MegaFormatter$MegaBytesResult;-><init>(Landroid/text/format/Formatter$BytesResult;)V

    return-object v1
.end method
