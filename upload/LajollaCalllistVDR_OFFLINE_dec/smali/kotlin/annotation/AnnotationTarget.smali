.class public final enum Lkotlin/annotation/AnnotationTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/annotation/AnnotationTarget;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/annotation/AnnotationTarget;",
        "",
        "CLASS",
        "ANNOTATION_CLASS",
        "TYPE_PARAMETER",
        "PROPERTY",
        "FIELD",
        "LOCAL_VARIABLE",
        "VALUE_PARAMETER",
        "CONSTRUCTOR",
        "FUNCTION",
        "PROPERTY_GETTER",
        "PROPERTY_SETTER",
        "TYPE",
        "EXPRESSION",
        "FILE",
        "TYPEALIAS",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final enum ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;

.field public static final enum CLASS:Lkotlin/annotation/AnnotationTarget;

.field public static final enum CONSTRUCTOR:Lkotlin/annotation/AnnotationTarget;

.field public static final enum EXPRESSION:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FIELD:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FILE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum FUNCTION:Lkotlin/annotation/AnnotationTarget;

.field public static final enum LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_GETTER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_SETTER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum TYPE:Lkotlin/annotation/AnnotationTarget;

.field public static final enum TYPEALIAS:Lkotlin/annotation/AnnotationTarget;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation
.end field

.field public static final enum TYPE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

.field public static final enum VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

.field public static final synthetic a:[Lkotlin/annotation/AnnotationTarget;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lkotlin/annotation/AnnotationTarget;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->CLASS:Lkotlin/annotation/AnnotationTarget;

    new-instance v1, Lkotlin/annotation/AnnotationTarget;

    const-string v2, "ANNOTATION_CLASS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lkotlin/annotation/AnnotationTarget;

    new-instance v2, Lkotlin/annotation/AnnotationTarget;

    const-string v3, "TYPE_PARAMETER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkotlin/annotation/AnnotationTarget;->TYPE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

    new-instance v3, Lkotlin/annotation/AnnotationTarget;

    const-string v4, "PROPERTY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/annotation/AnnotationTarget;->PROPERTY:Lkotlin/annotation/AnnotationTarget;

    new-instance v4, Lkotlin/annotation/AnnotationTarget;

    const-string v5, "FIELD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lkotlin/annotation/AnnotationTarget;->FIELD:Lkotlin/annotation/AnnotationTarget;

    new-instance v5, Lkotlin/annotation/AnnotationTarget;

    const-string v6, "LOCAL_VARIABLE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;

    new-instance v6, Lkotlin/annotation/AnnotationTarget;

    const-string v7, "VALUE_PARAMETER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;

    new-instance v7, Lkotlin/annotation/AnnotationTarget;

    const-string v8, "CONSTRUCTOR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lkotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lkotlin/annotation/AnnotationTarget;

    new-instance v8, Lkotlin/annotation/AnnotationTarget;

    const-string v9, "FUNCTION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;

    new-instance v9, Lkotlin/annotation/AnnotationTarget;

    const-string v10, "PROPERTY_GETTER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lkotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lkotlin/annotation/AnnotationTarget;

    new-instance v10, Lkotlin/annotation/AnnotationTarget;

    const-string v11, "PROPERTY_SETTER"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lkotlin/annotation/AnnotationTarget;->PROPERTY_SETTER:Lkotlin/annotation/AnnotationTarget;

    new-instance v11, Lkotlin/annotation/AnnotationTarget;

    const-string v12, "TYPE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lkotlin/annotation/AnnotationTarget;->TYPE:Lkotlin/annotation/AnnotationTarget;

    new-instance v12, Lkotlin/annotation/AnnotationTarget;

    const-string v13, "EXPRESSION"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lkotlin/annotation/AnnotationTarget;->EXPRESSION:Lkotlin/annotation/AnnotationTarget;

    new-instance v13, Lkotlin/annotation/AnnotationTarget;

    const-string v14, "FILE"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lkotlin/annotation/AnnotationTarget;->FILE:Lkotlin/annotation/AnnotationTarget;

    new-instance v14, Lkotlin/annotation/AnnotationTarget;

    const-string v15, "TYPEALIAS"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lkotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lkotlin/annotation/AnnotationTarget;->TYPEALIAS:Lkotlin/annotation/AnnotationTarget;

    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [Lkotlin/annotation/AnnotationTarget;

    move-result-object v0

    sput-object v0, Lkotlin/annotation/AnnotationTarget;->a:[Lkotlin/annotation/AnnotationTarget;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/annotation/AnnotationTarget;
    .locals 1

    const-class v0, Lkotlin/annotation/AnnotationTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/annotation/AnnotationTarget;

    return-object p0
.end method

.method public static values()[Lkotlin/annotation/AnnotationTarget;
    .locals 1

    sget-object v0, Lkotlin/annotation/AnnotationTarget;->a:[Lkotlin/annotation/AnnotationTarget;

    invoke-virtual {v0}, [Lkotlin/annotation/AnnotationTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/annotation/AnnotationTarget;

    return-object v0
.end method
