.class public final Landroidx/window/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ActivityFilter:[I = null

.field public static ActivityFilter_activityAction:I = 0x0

.field public static ActivityFilter_activityName:I = 0x1

.field public static ActivityRule:[I = null

.field public static ActivityRule_alwaysExpand:I = 0x0

.field public static SplitPairFilter:[I = null

.field public static SplitPairFilter_primaryActivityName:I = 0x0

.field public static SplitPairFilter_secondaryActivityAction:I = 0x1

.field public static SplitPairFilter_secondaryActivityName:I = 0x2

.field public static SplitPairRule:[I = null

.field public static SplitPairRule_clearTop:I = 0x0

.field public static SplitPairRule_finishPrimaryWithSecondary:I = 0x1

.field public static SplitPairRule_finishSecondaryWithPrimary:I = 0x2

.field public static SplitPairRule_splitLayoutDirection:I = 0x3

.field public static SplitPairRule_splitMinSmallestWidth:I = 0x4

.field public static SplitPairRule_splitMinWidth:I = 0x5

.field public static SplitPairRule_splitRatio:I = 0x6

.field public static SplitPlaceholderRule:[I = null

.field public static SplitPlaceholderRule_placeholderActivityName:I = 0x0

.field public static SplitPlaceholderRule_splitLayoutDirection:I = 0x1

.field public static SplitPlaceholderRule_splitMinSmallestWidth:I = 0x2

.field public static SplitPlaceholderRule_splitMinWidth:I = 0x3

.field public static SplitPlaceholderRule_splitRatio:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x7f03002a

    .line 2
    .line 3
    .line 4
    const v1, 0x7f03002c

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/window/R$styleable;->ActivityFilter:[I

    .line 12
    .line 13
    const v0, 0x7f030038

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/window/R$styleable;->ActivityRule:[I

    .line 21
    .line 22
    const v0, 0x7f0304a3

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0304a4

    .line 26
    .line 27
    .line 28
    const v2, 0x7f030471

    .line 29
    .line 30
    .line 31
    filled-new-array {v2, v0, v1}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Landroidx/window/R$styleable;->SplitPairFilter:[I

    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    new-array v0, v0, [I

    .line 39
    .line 40
    fill-array-data v0, :array_0

    .line 41
    .line 42
    .line 43
    sput-object v0, Landroidx/window/R$styleable;->SplitPairRule:[I

    .line 44
    .line 45
    const v0, 0x7f03045a

    .line 46
    .line 47
    .line 48
    const v1, 0x7f0304ed

    .line 49
    .line 50
    .line 51
    const v2, 0x7f0304ee

    .line 52
    .line 53
    .line 54
    const v3, 0x7f0304ef

    .line 55
    .line 56
    .line 57
    const v4, 0x7f0304f0

    .line 58
    .line 59
    .line 60
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 4
        0x7f0300ef
        0x7f03023b
        0x7f03023c
        0x7f0304ed
        0x7f0304ee
        0x7f0304ef
        0x7f0304f0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
