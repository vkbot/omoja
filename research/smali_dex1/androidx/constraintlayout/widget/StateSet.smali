.class public Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/StateSet$State;,
        Landroidx/constraintlayout/widget/StateSet$Variant;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultState:I

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/StateSet$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/StateSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10

    .line 1
    const-string v0, "Error parsing XML resource"

    .line 2
    .line 3
    const-string v1, "ConstraintLayoutStates"

    .line 4
    .line 5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    .line 10
    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_13
    if-ge v4, v3, :cond_28

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->StateSet_defaultState:I

    .line 27
    .line 28
    if-ne v5, v6, :cond_25

    .line 29
    .line 30
    iget v6, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 31
    .line 32
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iput v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 37
    .line 38
    :cond_25
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_13

    .line 41
    :cond_28
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .line 43
    .line 44
    :try_start_2b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_2f} :catch_49
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_47

    .line 48
    const/4 v3, 0x0

    .line 49
    :goto_30
    const/4 v4, 0x1

    .line 50
    if-eq v2, v4, :cond_96

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    const-string v5, "StateSet"

    .line 54
    .line 55
    if-eq v2, v4, :cond_4b

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    if-eq v2, v4, :cond_3c

    .line 59
    .line 60
    goto :goto_8a

    .line 61
    :cond_3c
    :try_start_3c
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_8a

    .line 70
    .line 71
    goto :goto_96

    .line 72
    :catch_47
    move-exception p1

    .line 73
    goto :goto_8f

    .line 74
    :catch_49
    move-exception p1

    .line 75
    goto :goto_93

    .line 76
    :cond_4b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    sparse-switch v4, :sswitch_data_98

    .line 85
    .line 86
    .line 87
    goto :goto_8a

    .line 88
    :sswitch_57
    const-string v4, "Variant"

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_8a

    .line 95
    .line 96
    new-instance v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 97
    .line 98
    invoke-direct {v2, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    .line 100
    .line 101
    if-eqz v3, :cond_8a

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/StateSet$State;->add(Landroidx/constraintlayout/widget/StateSet$Variant;)V

    .line 104
    .line 105
    .line 106
    goto :goto_8a

    .line 107
    :sswitch_6a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    goto :goto_8a

    .line 112
    :sswitch_6f
    const-string v4, "LayoutDescription"

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    goto :goto_8a

    .line 119
    :sswitch_76
    const-string v4, "State"

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_8a

    .line 126
    .line 127
    new-instance v3, Landroidx/constraintlayout/widget/StateSet$State;

    .line 128
    .line 129
    invoke-direct {v3, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 133
    .line 134
    iget v4, v3, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    .line 135
    .line 136
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_8a
    :goto_8a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 140
    .line 141
    .line 142
    move-result v2
    :try_end_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_8e} :catch_49
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_8e} :catch_47

    .line 143
    goto :goto_30

    .line 144
    :goto_8f
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    goto :goto_96

    .line 148
    :goto_93
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .line 150
    .line 151
    :cond_96
    :goto_96
    return-void

    .line 152
    nop

    .line 153
    :sswitch_data_98
    .sparse-switch
        0x4c7d471 -> :sswitch_76
        0x4d92b252 -> :sswitch_6f
        0x526c4e31 -> :sswitch_6a
        0x7155a865 -> :sswitch_57
    .end sparse-switch
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    return p2

    .line 12
    :cond_b
    const/high16 p2, -0x40800000    # -1.0f

    .line 13
    .line 14
    cmpl-float v1, p3, p2

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_3d

    .line 18
    .line 19
    cmpl-float p2, p4, p2

    .line 20
    .line 21
    if-nez p2, :cond_17

    .line 22
    .line 23
    goto :goto_3d

    .line 24
    :cond_17
    iget-object p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v3, 0x0

    .line 31
    :cond_1e
    :goto_1e
    if-ge v2, v1, :cond_35

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    check-cast v4, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 40
    .line 41
    invoke-virtual {v4, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1e

    .line 46
    .line 47
    iget v3, v4, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 48
    .line 49
    if-ne p1, v3, :cond_33

    .line 50
    .line 51
    goto :goto_56

    .line 52
    :cond_33
    move-object v3, v4

    .line 53
    goto :goto_1e

    .line 54
    :cond_35
    if-eqz v3, :cond_3a

    .line 55
    .line 56
    iget p1, v3, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 57
    .line 58
    return p1

    .line 59
    :cond_3a
    iget p1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 60
    .line 61
    return p1

    .line 62
    :cond_3d
    :goto_3d
    iget p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 63
    .line 64
    if-ne p2, p1, :cond_42

    .line 65
    .line 66
    goto :goto_56

    .line 67
    :cond_42
    iget-object p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    :cond_48
    if-ge v2, p3, :cond_57

    .line 74
    .line 75
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    check-cast p4, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 82
    .line 83
    iget p4, p4, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 84
    .line 85
    if-ne p1, p4, :cond_48

    .line 86
    .line 87
    :goto_56
    return p1

    .line 88
    :cond_57
    iget p1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 89
    .line 90
    return p1
.end method

.method public needsToChange(IFF)Z
    .registers 9

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v2, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne p1, v3, :cond_13

    .line 12
    .line 13
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_10
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_10

    .line 25
    :goto_18
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 26
    .line 27
    if-eq v0, v3, :cond_2b

    .line 28
    .line 29
    iget-object v2, p1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 36
    .line 37
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2b

    .line 42
    .line 43
    return v4

    .line 44
    :cond_2b
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne v0, p1, :cond_34

    .line 51
    .line 52
    return v4

    .line 53
    :cond_34
    return v1
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public stateGetConstraintID(III)I
    .registers 5

    .line 1
    int-to-float p2, p2

    .line 2
    int-to-float p3, p3

    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet;->updateConstraints(IIFF)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public updateConstraints(IIFF)I
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, p2, :cond_44

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 5
    .line 6
    if-ne p2, v0, :cond_f

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroidx/constraintlayout/widget/StateSet$State;

    .line 14
    .line 15
    goto :goto_17

    .line 16
    :cond_f
    iget p2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroidx/constraintlayout/widget/StateSet$State;

    .line 23
    .line 24
    :goto_17
    if-nez p2, :cond_1a

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1a
    iget v1, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 28
    .line 29
    if-eq v1, v0, :cond_2d

    .line 30
    .line 31
    iget-object v1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 38
    .line 39
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2d

    .line 44
    .line 45
    goto :goto_33

    .line 46
    :cond_2d
    invoke-virtual {p2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-ne p1, p3, :cond_34

    .line 51
    .line 52
    :goto_33
    return p1

    .line 53
    :cond_34
    if-ne p3, v0, :cond_39

    .line 54
    .line 55
    iget p1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 56
    .line 57
    return p1

    .line 58
    :cond_39
    iget-object p1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 65
    .line 66
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 67
    .line 68
    return p1

    .line 69
    :cond_44
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 76
    .line 77
    if-nez p1, :cond_4f

    .line 78
    .line 79
    return v0

    .line 80
    :cond_4f
    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-ne p2, v0, :cond_58

    .line 85
    .line 86
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 87
    .line 88
    return p1

    .line 89
    :cond_58
    iget-object p1, p1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 96
    .line 97
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 98
    .line 99
    return p1
.end method
