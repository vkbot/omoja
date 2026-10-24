.class public final enum Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

.field public static final enum BinarySearchBackward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

.field public static final enum BinarySearchForward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

.field public static final enum IterateBackward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

.field public static final enum IterateForward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    const-string v1, "IterateForward"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->IterateForward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    new-instance v1, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    const-string v2, "IterateBackward"

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->IterateBackward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    new-instance v2, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    const-string v3, "BinarySearchForward"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->BinarySearchForward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    new-instance v3, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    const/4 v4, 0x3

    const/4 v5, -0x2

    const-string v6, "BinarySearchBackward"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->BinarySearchBackward:Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->$VALUES:[Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->$VALUES:[Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SearchMode;->intValue:I

    return p0
.end method
