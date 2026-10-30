.class public Lcom/mega/nexus/content/pm/MegaPackageStats;
.super Ljava/lang/Object;
.source "MegaPackageStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserHandle(Landroid/content/pm/PackageStats;)I
    .locals 1
    .param p0, "stats"    # Landroid/content/pm/PackageStats;

    .line 11
    iget v0, p0, Landroid/content/pm/PackageStats;->userHandle:I

    return v0
.end method

.method public static initPackageStats(Ljava/lang/String;I)Landroid/content/pm/PackageStats;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userHandle"    # I

    .line 7
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
