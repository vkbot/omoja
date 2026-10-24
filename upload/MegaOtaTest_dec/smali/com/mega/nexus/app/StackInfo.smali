.class public Lcom/mega/nexus/app/StackInfo;
.super Ljava/lang/Object;
.source "StackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mega/nexus/app/StackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Landroid/graphics/Rect;

.field public displayId:I

.field public position:I

.field public stackId:I

.field public taskBounds:[Landroid/graphics/Rect;

.field public taskIds:[I

.field public taskNames:[Ljava/lang/String;

.field public taskUserIds:[I

.field public topActivity:Landroid/content/ComponentName;

.field public userId:I

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/mega/nexus/app/StackInfo$1;

    invoke-direct {v0}, Lcom/mega/nexus/app/StackInfo$1;-><init>()V

    sput-object v0, Lcom/mega/nexus/app/StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p0, p1}, Lcom/mega/nexus/app/StackInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mega/nexus/app/StackInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mega/nexus/app/StackInfo$1;

    .line 8
    invoke-direct {p0, p1}, Lcom/mega/nexus/app/StackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mega/nexus/app/StackInfo;->stackId:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/app/StackInfo;->taskIds:[I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/app/StackInfo;->taskNames:[Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "boundsCount":I
    if-lez v0, :cond_1

    .line 65
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    .line 68
    iget-object v2, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 68
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 72
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 74
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/mega/nexus/app/StackInfo;->taskUserIds:[I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mega/nexus/app/StackInfo;->displayId:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mega/nexus/app/StackInfo;->userId:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/mega/nexus/app/StackInfo;->visible:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mega/nexus/app/StackInfo;->position:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_3

    .line 80
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/nexus/app/StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 82
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mega/nexus/app/StackInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "Stack id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/mega/nexus/app/StackInfo;->stackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v2, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v2, " displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v2, p0, Lcom/mega/nexus/app/StackInfo;->displayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v3, p0, Lcom/mega/nexus/app/StackInfo;->userId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->taskIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v5, "taskId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->taskIds:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->taskUserIds:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v5, " visible="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mega/nexus/app/StackInfo;->visible:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    .line 130
    const-string v5, " topActivity="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mega/nexus/app/StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 29
    iget v0, p0, Lcom/mega/nexus/app/StackInfo;->stackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v0, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v0, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v0, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v0, p0, Lcom/mega/nexus/app/StackInfo;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v0, p0, Lcom/mega/nexus/app/StackInfo;->taskIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 35
    iget-object v0, p0, Lcom/mega/nexus/app/StackInfo;->taskNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 37
    .local v0, "boundsCount":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 39
    iget-object v3, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v3, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v3, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v3, p0, Lcom/mega/nexus/app/StackInfo;->taskBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mega/nexus/app/StackInfo;->taskUserIds:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 45
    iget v2, p0, Lcom/mega/nexus/app/StackInfo;->displayId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v2, p0, Lcom/mega/nexus/app/StackInfo;->userId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean v2, p0, Lcom/mega/nexus/app/StackInfo;->visible:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v2, p0, Lcom/mega/nexus/app/StackInfo;->position:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v2, p0, Lcom/mega/nexus/app/StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v2, p0, Lcom/mega/nexus/app/StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    :goto_2
    return-void
.end method
