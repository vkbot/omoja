.class public final enum Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

.field public static final enum ExactMatch:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

.field public static final enum ExactMatchFallbackToLargerValue:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

.field public static final enum ExactMatchFallbackToSmallerValue:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

.field public static final enum WildcardMatch:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    const-string v1, "ExactMatch"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->ExactMatch:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    new-instance v1, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    const/4 v2, -0x1

    const-string v3, "ExactMatchFallbackToSmallerValue"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->ExactMatchFallbackToSmallerValue:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    new-instance v2, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    const-string v3, "ExactMatchFallbackToLargerValue"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->ExactMatchFallbackToLargerValue:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    new-instance v3, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    const-string v4, "WildcardMatch"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->WildcardMatch:Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->$VALUES:[Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

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

    iput p3, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->$VALUES:[Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$MatchMode;->intValue:I

    return p0
.end method
