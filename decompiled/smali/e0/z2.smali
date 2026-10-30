.class public abstract Le0/z2;
.super Landroid/os/AsyncTask;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/16 v2, 0x2c

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-byte v2, v1, v3

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Le0/z2;->a:Ljava/lang/String;

    .line 21
    .line 22
    sput-boolean v0, Le0/z2;->b:Z

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 1
        0x1ct
        -0x72t
        0x56t
        0x3at
        -0x6dt
        0x72t
        0x16t
        -0x2dt
    .end array-data
.end method
