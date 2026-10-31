.class public Landroidx/constraintlayout/core/dsl/OnSwipe;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;,
        Landroidx/constraintlayout/core/dsl/OnSwipe$Side;,
        Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;,
        Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;,
        Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;
    }
.end annotation


# static fields
.field public static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field public static final FLAG_DISABLE_SCROLL:I = 0x2


# instance fields
.field private mAutoCompleteMode:Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;

.field private mDragDirection:Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;

.field private mDragScale:F

.field private mDragThreshold:F

.field private mLimitBoundsTo:Ljava/lang/String;

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private mOnTouchUp:Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;

.field private mRotationCenterId:Ljava/lang/String;

.field private mSpringBoundary:Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;

.field private mSpringDamping:F

.field private mSpringMass:F

.field private mSpringStiffness:F

.field private mSpringStopThreshold:F

.field private mTouchAnchorId:Ljava/lang/String;

.field private mTouchAnchorSide:Landroidx/constraintlayout/core/dsl/OnSwipe$Side;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragDirection:Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorSide:Landroidx/constraintlayout/core/dsl/OnSwipe$Side;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mLimitBoundsTo:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mOnTouchUp:Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mRotationCenterId:Ljava/lang/String;

    .line 16
    .line 17
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxVelocity:F

    .line 20
    .line 21
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxAcceleration:F

    .line 22
    .line 23
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragScale:F

    .line 24
    .line 25
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragThreshold:F

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringDamping:F

    .line 28
    .line 29
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringMass:F

    .line 30
    .line 31
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStiffness:F

    .line 32
    .line 33
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStopThreshold:F

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringBoundary:Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mAutoCompleteMode:Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/dsl/OnSwipe$Side;Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mLimitBoundsTo:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mOnTouchUp:Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;

    .line 43
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mRotationCenterId:Ljava/lang/String;

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 44
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxVelocity:F

    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxAcceleration:F

    .line 46
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragScale:F

    .line 47
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragThreshold:F

    .line 48
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringDamping:F

    .line 49
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringMass:F

    .line 50
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStiffness:F

    .line 51
    iput v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStopThreshold:F

    .line 52
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringBoundary:Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;

    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mAutoCompleteMode:Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;

    .line 54
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorSide:Landroidx/constraintlayout/core/dsl/OnSwipe$Side;

    .line 56
    iput-object p3, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragDirection:Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;

    return-void
.end method


# virtual methods
.method public getAutoCompleteMode()Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mAutoCompleteMode:Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDragDirection()Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragDirection:Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDragScale()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragScale:F

    .line 2
    .line 3
    return v0
.end method

.method public getDragThreshold()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragThreshold:F

    .line 2
    .line 3
    return v0
.end method

.method public getLimitBoundsTo()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mLimitBoundsTo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxAcceleration()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxAcceleration:F

    .line 2
    .line 3
    return v0
.end method

.method public getMaxVelocity()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxVelocity:F

    .line 2
    .line 3
    return v0
.end method

.method public getOnTouchUp()Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mOnTouchUp:Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRotationCenterId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mRotationCenterId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpringBoundary()Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringBoundary:Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpringDamping()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringDamping:F

    .line 2
    .line 3
    return v0
.end method

.method public getSpringMass()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringMass:F

    .line 2
    .line 3
    return v0
.end method

.method public getSpringStiffness()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStiffness:F

    .line 2
    .line 3
    return v0
.end method

.method public getSpringStopThreshold()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStopThreshold:F

    .line 2
    .line 3
    return v0
.end method

.method public getTouchAnchorId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTouchAnchorSide()Landroidx/constraintlayout/core/dsl/OnSwipe$Side;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorSide:Landroidx/constraintlayout/core/dsl/OnSwipe$Side;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAutoCompleteMode(Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mAutoCompleteMode:Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;

    .line 2
    .line 3
    return-void
.end method

.method public setDragDirection(Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragDirection:Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDragScale(I)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragScale:F

    .line 3
    .line 4
    return-object p0
.end method

.method public setDragThreshold(I)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragThreshold:F

    .line 3
    .line 4
    return-object p0
.end method

.method public setLimitBoundsTo(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mLimitBoundsTo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxAcceleration(I)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxAcceleration:F

    .line 3
    .line 4
    return-object p0
.end method

.method public setMaxVelocity(I)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxVelocity:F

    .line 3
    .line 4
    return-object p0
.end method

.method public setOnTouchUp(Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mOnTouchUp:Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRotateCenter(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mRotationCenterId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpringBoundary(Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringBoundary:Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpringDamping(F)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringDamping:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpringMass(F)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringMass:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpringStiffness(F)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStiffness:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpringStopThreshold(F)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStopThreshold:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setTouchAnchorId(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTouchAnchorSide(Landroidx/constraintlayout/core/dsl/OnSwipe$Side;)Landroidx/constraintlayout/core/dsl/OnSwipe;
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorSide:Landroidx/constraintlayout/core/dsl/OnSwipe$Side;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OnSwipe:{\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorId:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\',\n"

    .line 11
    .line 12
    if-eqz v1, :cond_1a

    .line 13
    .line 14
    const-string v1, "anchor:\'"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragDirection:Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;

    .line 28
    .line 29
    if-eqz v1, :cond_33

    .line 30
    .line 31
    const-string v1, "direction:\'"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragDirection:Landroidx/constraintlayout/core/dsl/OnSwipe$Drag;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_33
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorSide:Landroidx/constraintlayout/core/dsl/OnSwipe$Side;

    .line 53
    .line 54
    if-eqz v1, :cond_4c

    .line 55
    .line 56
    const-string v1, "side:\'"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mTouchAnchorSide:Landroidx/constraintlayout/core/dsl/OnSwipe$Side;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_4c
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragScale:F

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_61

    .line 84
    .line 85
    const-string v1, "scale:\'"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragScale:F

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :cond_61
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragThreshold:F

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_76

    .line 105
    .line 106
    const-string v1, "threshold:\'"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mDragThreshold:F

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_76
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxVelocity:F

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_8b

    .line 126
    .line 127
    const-string v1, "maxVelocity:\'"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxVelocity:F

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :cond_8b
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxAcceleration:F

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_a0

    .line 147
    .line 148
    const-string v1, "maxAccel:\'"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mMaxAcceleration:F

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    :cond_a0
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mLimitBoundsTo:Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v1, :cond_b1

    .line 164
    .line 165
    const-string v1, "limitBounds:\'"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mLimitBoundsTo:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_b1
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mAutoCompleteMode:Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;

    .line 179
    .line 180
    if-eqz v1, :cond_ca

    .line 181
    .line 182
    const-string v1, "mode:\'"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mAutoCompleteMode:Landroidx/constraintlayout/core/dsl/OnSwipe$Mode;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    :cond_ca
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mOnTouchUp:Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;

    .line 204
    .line 205
    if-eqz v1, :cond_e3

    .line 206
    .line 207
    const-string v1, "touchUp:\'"

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mOnTouchUp:Landroidx/constraintlayout/core/dsl/OnSwipe$TouchUp;

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :cond_e3
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringMass:F

    .line 229
    .line 230
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_f8

    .line 235
    .line 236
    const-string v1, "springMass:\'"

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringMass:F

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_f8
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStiffness:F

    .line 250
    .line 251
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_10d

    .line 256
    .line 257
    const-string v1, "springStiffness:\'"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStiffness:F

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    :cond_10d
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringDamping:F

    .line 271
    .line 272
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_122

    .line 277
    .line 278
    const-string v1, "springDamping:\'"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringDamping:F

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    :cond_122
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStopThreshold:F

    .line 292
    .line 293
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-nez v1, :cond_137

    .line 298
    .line 299
    const-string v1, "stopThreshold:\'"

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringStopThreshold:F

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    :cond_137
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringBoundary:Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;

    .line 313
    .line 314
    if-eqz v1, :cond_148

    .line 315
    .line 316
    const-string v1, "springBoundary:\'"

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mSpringBoundary:Landroidx/constraintlayout/core/dsl/OnSwipe$Boundary;

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    :cond_148
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mRotationCenterId:Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v1, :cond_159

    .line 332
    .line 333
    const-string v1, "around:\'"

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/OnSwipe;->mRotationCenterId:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    :cond_159
    const-string v1, "},\n"

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    return-object v0
.end method
