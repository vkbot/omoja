.class public Landroidx/constraintlayout/core/dsl/Constraint;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;,
        Landroidx/constraintlayout/core/dsl/Constraint$HSide;,
        Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;,
        Landroidx/constraintlayout/core/dsl/Constraint$VSide;,
        Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;,
        Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;,
        Landroidx/constraintlayout/core/dsl/Constraint$Anchor;,
        Landroidx/constraintlayout/core/dsl/Constraint$Side;
    }
.end annotation


# static fields
.field public static final PARENT:Landroidx/constraintlayout/core/dsl/Constraint;

.field static UNSET:I

.field static chainModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field helperJason:Ljava/lang/String;

.field helperType:Ljava/lang/String;

.field private mBaseline:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

.field private mBottom:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

.field private mCircleAngle:F

.field private mCircleConstraint:Ljava/lang/String;

.field private mCircleRadius:I

.field private mConstrainedHeight:Z

.field private mConstrainedWidth:Z

.field private mDimensionRatio:Ljava/lang/String;

.field private mEditorAbsoluteX:I

.field private mEditorAbsoluteY:I

.field private mEnd:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

.field private mHeight:I

.field private mHeightDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

.field private mHeightMax:I

.field private mHeightMin:I

.field private mHeightPercent:F

.field private mHorizontalBias:F

.field private mHorizontalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

.field private mHorizontalWeight:F

.field private final mId:Ljava/lang/String;

.field private mLeft:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

.field private mReferenceIds:[Ljava/lang/String;

.field private mRight:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

.field private mStart:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

.field private mTop:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

.field private mVerticalBias:F

.field private mVerticalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

.field private mVerticalWeight:F

.field private mWidth:I

.field private mWidthDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

.field private mWidthMax:I

.field private mWidthMin:I

.field private mWidthPercent:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/dsl/Constraint;

    .line 2
    .line 3
    const-string v1, "parent"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/dsl/Constraint;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/constraintlayout/core/dsl/Constraint;->PARENT:Landroidx/constraintlayout/core/dsl/Constraint;

    .line 9
    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    sput v0, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/constraintlayout/core/dsl/Constraint;->chainModeMap:Ljava/util/Map;

    .line 20
    .line 21
    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->SPREAD:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 22
    .line 23
    const-string v2, "spread"

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint;->chainModeMap:Ljava/util/Map;

    .line 29
    .line 30
    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->SPREAD_INSIDE:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 31
    .line 32
    const-string v2, "spread_inside"

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroidx/constraintlayout/core/dsl/Constraint;->chainModeMap:Ljava/util/Map;

    .line 38
    .line 39
    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;->PACKED:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 40
    .line 41
    const-string v2, "packed"

    .line 42
    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->helperType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->helperJason:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 10
    .line 11
    sget-object v2, Landroidx/constraintlayout/core/dsl/Constraint$HSide;->LEFT:Landroidx/constraintlayout/core/dsl/Constraint$HSide;

    .line 12
    .line 13
    invoke-direct {v1, p0, v2}, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$HSide;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mLeft:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 17
    .line 18
    new-instance v1, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 19
    .line 20
    sget-object v2, Landroidx/constraintlayout/core/dsl/Constraint$HSide;->RIGHT:Landroidx/constraintlayout/core/dsl/Constraint$HSide;

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$HSide;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mRight:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 26
    .line 27
    new-instance v1, Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 28
    .line 29
    sget-object v2, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->TOP:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    .line 30
    .line 31
    invoke-direct {v1, p0, v2}, Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mTop:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 35
    .line 36
    new-instance v1, Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 37
    .line 38
    sget-object v2, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->BOTTOM:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    .line 39
    .line 40
    invoke-direct {v1, p0, v2}, Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBottom:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 44
    .line 45
    new-instance v1, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 46
    .line 47
    sget-object v2, Landroidx/constraintlayout/core/dsl/Constraint$HSide;->START:Landroidx/constraintlayout/core/dsl/Constraint$HSide;

    .line 48
    .line 49
    invoke-direct {v1, p0, v2}, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$HSide;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mStart:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 53
    .line 54
    new-instance v1, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 55
    .line 56
    sget-object v2, Landroidx/constraintlayout/core/dsl/Constraint$HSide;->END:Landroidx/constraintlayout/core/dsl/Constraint$HSide;

    .line 57
    .line 58
    invoke-direct {v1, p0, v2}, Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$HSide;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEnd:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 62
    .line 63
    new-instance v1, Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 64
    .line 65
    sget-object v2, Landroidx/constraintlayout/core/dsl/Constraint$VSide;->BASELINE:Landroidx/constraintlayout/core/dsl/Constraint$VSide;

    .line 66
    .line 67
    invoke-direct {v1, p0, v2}, Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;-><init>(Landroidx/constraintlayout/core/dsl/Constraint;Landroidx/constraintlayout/core/dsl/Constraint$VSide;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBaseline:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 71
    .line 72
    sget v1, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 73
    .line 74
    iput v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidth:I

    .line 75
    .line 76
    iput v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeight:I

    .line 77
    .line 78
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 79
    .line 80
    iput v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalBias:F

    .line 81
    .line 82
    iput v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalBias:F

    .line 83
    .line 84
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mDimensionRatio:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleConstraint:Ljava/lang/String;

    .line 87
    .line 88
    const/high16 v3, -0x80000000

    .line 89
    .line 90
    iput v3, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleRadius:I

    .line 91
    .line 92
    iput v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleAngle:F

    .line 93
    .line 94
    iput v3, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEditorAbsoluteX:I

    .line 95
    .line 96
    iput v3, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEditorAbsoluteY:I

    .line 97
    .line 98
    iput v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalWeight:F

    .line 99
    .line 100
    iput v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalWeight:F

    .line 101
    .line 102
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 103
    .line 104
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 105
    .line 106
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 107
    .line 108
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 109
    .line 110
    iput v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMax:I

    .line 111
    .line 112
    iput v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMax:I

    .line 113
    .line 114
    iput v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMin:I

    .line 115
    .line 116
    iput v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMin:I

    .line 117
    .line 118
    iput v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthPercent:F

    .line 119
    .line 120
    iput v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightPercent:F

    .line 121
    .line 122
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mReferenceIds:[Ljava/lang/String;

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedWidth:Z

    .line 126
    .line 127
    iput-boolean v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedHeight:Z

    .line 128
    .line 129
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mId:Ljava/lang/String;

    .line 130
    .line 131
    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/core/dsl/Constraint;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V
    .registers 5

    .line 1
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p2, ":"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, ",\n"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public convertStringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_21

    .line 11
    .line 12
    const-string v2, "\'"

    .line 13
    .line 14
    if-nez v1, :cond_11

    .line 15
    .line 16
    move-object v3, v2

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const-string v3, ",\'"

    .line 19
    .line 20
    :goto_13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    aget-object v3, p1, v1

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_8

    .line 34
    :cond_21
    const-string p1, "]"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public getBaseline()Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBaseline:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBottom()Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBottom:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCircleAngle()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleAngle:F

    .line 2
    .line 3
    return v0
.end method

.method public getCircleConstraint()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleConstraint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCircleRadius()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleRadius:I

    .line 2
    .line 3
    return v0
.end method

.method public getDimensionRatio()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mDimensionRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEditorAbsoluteX()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEditorAbsoluteX:I

    .line 2
    .line 3
    return v0
.end method

.method public getEditorAbsoluteY()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEditorAbsoluteY:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnd()Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEnd:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeightDefault()Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeightMax()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeightMin()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMin:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeightPercent()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightPercent:F

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalBias()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalBias:F

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalChainStyle()Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHorizontalWeight()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalWeight:F

    .line 2
    .line 3
    return v0
.end method

.method public getLeft()Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mLeft:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReferenceIds()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mReferenceIds:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRight()Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mRight:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStart()Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mStart:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTop()Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mTop:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerticalBias()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalBias:F

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalChainStyle()Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerticalWeight()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalWeight:F

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidthDefault()Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidthMax()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidthMin()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMin:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidthPercent()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthPercent:F

    .line 2
    .line 3
    return v0
.end method

.method public isConstrainedHeight()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedHeight:Z

    .line 2
    .line 3
    return v0
.end method

.method public isConstrainedWidth()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedWidth:Z

    .line 2
    .line 3
    return v0
.end method

.method public linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V

    return-void
.end method

.method public linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V

    return-void
.end method

.method public linkToBaseline(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBaseline:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    return-void
.end method

.method public linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V

    return-void
.end method

.method public linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V

    return-void
.end method

.method public linkToBottom(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBottom:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    return-void
.end method

.method public linkToEnd(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToEnd(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V

    return-void
.end method

.method public linkToEnd(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToEnd(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V

    return-void
.end method

.method public linkToEnd(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEnd:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    return-void
.end method

.method public linkToLeft(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToLeft(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V

    return-void
.end method

.method public linkToLeft(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToLeft(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V

    return-void
.end method

.method public linkToLeft(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mLeft:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    return-void
.end method

.method public linkToRight(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToRight(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V

    return-void
.end method

.method public linkToRight(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToRight(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V

    return-void
.end method

.method public linkToRight(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mRight:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    return-void
.end method

.method public linkToStart(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToStart(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V

    return-void
.end method

.method public linkToStart(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;I)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToStart(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V

    return-void
.end method

.method public linkToStart(Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mStart:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    return-void
.end method

.method public linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;)V
    .registers 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V

    return-void
.end method

.method public linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;I)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/dsl/Constraint;->linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V

    return-void
.end method

.method public linkToTop(Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mTop:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mConnection:Landroidx/constraintlayout/core/dsl/Constraint$Anchor;

    .line 4
    .line 5
    iput p2, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mMargin:I

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->mGoneMargin:I

    .line 8
    .line 9
    return-void
.end method

.method public setCircleAngle(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleAngle:F

    .line 2
    .line 3
    return-void
.end method

.method public setCircleConstraint(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleConstraint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCircleRadius(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleRadius:I

    .line 2
    .line 3
    return-void
.end method

.method public setConstrainedHeight(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedHeight:Z

    .line 2
    .line 3
    return-void
.end method

.method public setConstrainedWidth(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedWidth:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mDimensionRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEditorAbsoluteX(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEditorAbsoluteX:I

    .line 2
    .line 3
    return-void
.end method

.method public setEditorAbsoluteY(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEditorAbsoluteY:I

    .line 2
    .line 3
    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setHeightDefault(Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 2
    .line 3
    return-void
.end method

.method public setHeightMax(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMax:I

    .line 2
    .line 3
    return-void
.end method

.method public setHeightMin(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMin:I

    .line 2
    .line 3
    return-void
.end method

.method public setHeightPercent(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightPercent:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalChainStyle(Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalWeight(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalWeight:F

    .line 2
    .line 3
    return-void
.end method

.method public setReferenceIds([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mReferenceIds:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalBias(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalBias:F

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalChainStyle(Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalWeight(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalWeight:F

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidthDefault(Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 2
    .line 3
    return-void
.end method

.method public setWidthMax(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMax:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidthMin(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMin:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidthPercent(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthPercent:F

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mId:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, ":{\n"

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mLeft:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->build(Ljava/lang/StringBuilder;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mRight:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->build(Ljava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mTop:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->build(Ljava/lang/StringBuilder;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBottom:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->build(Ljava/lang/StringBuilder;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mStart:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->build(Ljava/lang/StringBuilder;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mEnd:Landroidx/constraintlayout/core/dsl/Constraint$HAnchor;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->build(Ljava/lang/StringBuilder;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mBaseline:Landroidx/constraintlayout/core/dsl/Constraint$VAnchor;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/dsl/Constraint$Anchor;->build(Ljava/lang/StringBuilder;)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidth:I

    .line 55
    .line 56
    sget v2, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 57
    .line 58
    const-string v3, ",\n"

    .line 59
    .line 60
    if-eq v1, v2, :cond_4a

    .line 61
    .line 62
    const-string v1, "width:"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidth:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_4a
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeight:I

    .line 76
    .line 77
    sget v2, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_5d

    .line 80
    .line 81
    const-string v1, "height:"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeight:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_5d
    const-string v1, "horizontalBias"

    .line 95
    .line 96
    iget v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalBias:F

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Constraint;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 99
    .line 100
    .line 101
    const-string v1, "verticalBias"

    .line 102
    .line 103
    iget v2, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalBias:F

    .line 104
    .line 105
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Constraint;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mDimensionRatio:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "\',\n"

    .line 111
    .line 112
    if-eqz v1, :cond_7e

    .line 113
    .line 114
    const-string v1, "dimensionRatio:\'"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mDimensionRatio:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    :cond_7e
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleConstraint:Ljava/lang/String;

    .line 128
    .line 129
    const-string v4, "\'"

    .line 130
    .line 131
    if-eqz v1, :cond_d5

    .line 132
    .line 133
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleAngle:F

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const/high16 v5, -0x80000000

    .line 140
    .line 141
    if-eqz v1, :cond_92

    .line 142
    .line 143
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleRadius:I

    .line 144
    .line 145
    if-eq v1, v5, :cond_d5

    .line 146
    .line 147
    :cond_92
    const-string v1, "circular:[\'"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleConstraint:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleAngle:F

    .line 161
    .line 162
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    const-string v6, ","

    .line 167
    .line 168
    if-nez v1, :cond_b1

    .line 169
    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleAngle:F

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_b1
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleRadius:I

    .line 179
    .line 180
    if-eq v1, v5, :cond_d0

    .line 181
    .line 182
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleAngle:F

    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_c8

    .line 189
    .line 190
    const-string v1, ",0,"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleRadius:I

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    goto :goto_d0

    .line 201
    :cond_c8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mCircleRadius:I

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    :cond_d0
    :goto_d0
    const-string v1, "],\n"

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    :cond_d5
    const-string v1, "verticalWeight"

    .line 215
    .line 216
    iget v5, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalWeight:F

    .line 217
    .line 218
    invoke-virtual {p0, v0, v1, v5}, Landroidx/constraintlayout/core/dsl/Constraint;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 219
    .line 220
    .line 221
    const-string v1, "horizontalWeight"

    .line 222
    .line 223
    iget v5, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalWeight:F

    .line 224
    .line 225
    invoke-virtual {p0, v0, v1, v5}, Landroidx/constraintlayout/core/dsl/Constraint;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 229
    .line 230
    if-eqz v1, :cond_fc

    .line 231
    .line 232
    const-string v1, "horizontalChainStyle:\'"

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint;->chainModeMap:Ljava/util/Map;

    .line 238
    .line 239
    iget-object v5, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHorizontalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 240
    .line 241
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    :cond_fc
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 254
    .line 255
    if-eqz v1, :cond_115

    .line 256
    .line 257
    const-string v1, "verticalChainStyle:\'"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    sget-object v1, Landroidx/constraintlayout/core/dsl/Constraint;->chainModeMap:Ljava/util/Map;

    .line 263
    .line 264
    iget-object v5, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mVerticalChainStyle:Landroidx/constraintlayout/core/dsl/Constraint$ChainMode;

    .line 265
    .line 266
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    :cond_115
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 279
    .line 280
    const-string v5, ",min:"

    .line 281
    .line 282
    const-string v6, ",max:"

    .line 283
    .line 284
    const-string v7, "width:\'"

    .line 285
    .line 286
    const-string v8, "},\n"

    .line 287
    .line 288
    if-eqz v1, :cond_173

    .line 289
    .line 290
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMax:I

    .line 291
    .line 292
    sget v9, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 293
    .line 294
    if-ne v1, v9, :cond_13f

    .line 295
    .line 296
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMin:I

    .line 297
    .line 298
    if-ne v1, v9, :cond_13f

    .line 299
    .line 300
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    goto :goto_173

    .line 320
    :cond_13f
    const-string v1, "width:{value:\'"

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMax:I

    .line 342
    .line 343
    sget v9, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 344
    .line 345
    if-eq v1, v9, :cond_162

    .line 346
    .line 347
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMax:I

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    :cond_162
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMin:I

    .line 356
    .line 357
    sget v9, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 358
    .line 359
    if-eq v1, v9, :cond_170

    .line 360
    .line 361
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthMin:I

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    :cond_170
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    :cond_173
    :goto_173
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 373
    .line 374
    const-string v9, "height:\'"

    .line 375
    .line 376
    if-eqz v1, :cond_1cb

    .line 377
    .line 378
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMax:I

    .line 379
    .line 380
    sget v10, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 381
    .line 382
    if-ne v1, v10, :cond_197

    .line 383
    .line 384
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMin:I

    .line 385
    .line 386
    if-ne v1, v10, :cond_197

    .line 387
    .line 388
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    goto :goto_1cb

    .line 408
    :cond_197
    const-string v1, "height:{value:\'"

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightDefault:Landroidx/constraintlayout/core/dsl/Constraint$Behaviour;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMax:I

    .line 430
    .line 431
    sget v2, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 432
    .line 433
    if-eq v1, v2, :cond_1ba

    .line 434
    .line 435
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMax:I

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    :cond_1ba
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMin:I

    .line 444
    .line 445
    sget v2, Landroidx/constraintlayout/core/dsl/Constraint;->UNSET:I

    .line 446
    .line 447
    if-eq v1, v2, :cond_1c8

    .line 448
    .line 449
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightMin:I

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    :cond_1c8
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    :cond_1cb
    :goto_1cb
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthPercent:F

    .line 461
    .line 462
    float-to-double v1, v1

    .line 463
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    const-string v2, "%\',\n"

    .line 468
    .line 469
    if-nez v1, :cond_1e2

    .line 470
    .line 471
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mWidthPercent:F

    .line 475
    .line 476
    float-to-int v1, v1

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    :cond_1e2
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightPercent:F

    .line 484
    .line 485
    float-to-double v4, v1

    .line 486
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-nez v1, :cond_1f7

    .line 491
    .line 492
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    iget v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mHeightPercent:F

    .line 496
    .line 497
    float-to-int v1, v1

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    :cond_1f7
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mReferenceIds:[Ljava/lang/String;

    .line 505
    .line 506
    if-eqz v1, :cond_20c

    .line 507
    .line 508
    const-string v1, "referenceIds:"

    .line 509
    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mReferenceIds:[Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/dsl/Constraint;->convertStringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    :cond_20c
    iget-boolean v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedWidth:Z

    .line 526
    .line 527
    if-eqz v1, :cond_21d

    .line 528
    .line 529
    const-string v1, "constrainedWidth:"

    .line 530
    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    iget-boolean v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedWidth:Z

    .line 535
    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    :cond_21d
    iget-boolean v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedHeight:Z

    .line 543
    .line 544
    if-eqz v1, :cond_22e

    .line 545
    .line 546
    const-string v1, "constrainedHeight:"

    .line 547
    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    iget-boolean v1, p0, Landroidx/constraintlayout/core/dsl/Constraint;->mConstrainedHeight:Z

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    :cond_22e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    return-object v0
.end method
