.class public final enum Lorg/apache/poi/sl/usermodel/Placeholder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/Placeholder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CHART:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CLIP_ART:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CONTENT:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum DGM:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum MEDIA:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum NONE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum PICTURE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum SLIDE_IMAGE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum SUBTITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum TABLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum VERTICAL_OBJECT:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum VERTICAL_TEXT_BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum VERTICAL_TEXT_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;


# instance fields
.field public final nativeNotesId:I

.field public final nativeNotesMasterId:I

.field public final nativeSlideId:I

.field public final nativeSlideMasterId:I

.field public final ooxmlId:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    new-instance v9, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v8, v9

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/Placeholder;->NONE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v9, v0

    const-string v11, "TITLE"

    const/4 v12, 0x1

    const/16 v13, 0xd

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v10, v0

    const-string v19, "BODY"

    const/16 v20, 0x2

    const/16 v21, 0xe

    const/16 v22, 0x2

    const/16 v23, 0xc

    const/16 v24, 0x6

    const/16 v25, 0x2

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v25}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v11, v0

    const-string v27, "CENTERED_TITLE"

    const/16 v28, 0x3

    const/16 v29, 0xf

    const/16 v30, 0x3

    const/16 v31, 0x3

    const/16 v32, 0x3

    const/16 v33, 0x3

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v33}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v12, v0

    const-string v14, "SUBTITLE"

    const/4 v15, 0x4

    const/16 v16, 0x10

    const/16 v17, 0x4

    const/16 v18, 0x4

    const/16 v19, 0x4

    const/16 v20, 0x4

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->SUBTITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v13, v0

    const-string v22, "DATETIME"

    const/16 v23, 0x5

    const/16 v24, 0x7

    const/16 v25, 0x7

    const/16 v26, 0x7

    const/16 v27, 0x7

    const/16 v28, 0x5

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v28}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v14, v0

    const-string v30, "SLIDE_NUMBER"

    const/16 v31, 0x6

    const/16 v32, 0x8

    const/16 v33, 0x8

    const/16 v34, 0x8

    const/16 v35, 0x8

    const/16 v36, 0x6

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v36}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object v15, v0

    const-string v17, "FOOTER"

    const/16 v18, 0x7

    const/16 v19, 0x9

    const/16 v20, 0x9

    const/16 v21, 0x9

    const/16 v22, 0x9

    const/16 v23, 0x7

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v16, v0

    const-string v25, "HEADER"

    const/16 v26, 0x8

    const/16 v27, 0xa

    const/16 v28, 0xa

    const/16 v29, 0xa

    const/16 v30, 0xa

    const/16 v31, 0x8

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v31}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v17, v0

    const-string v33, "CONTENT"

    const/16 v34, 0x9

    const/16 v35, 0x13

    const/16 v36, 0x13

    const/16 v37, 0x13

    const/16 v38, 0x13

    const/16 v39, 0x9

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v39}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->CONTENT:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v18, v0

    const-string v20, "CHART"

    const/16 v21, 0xa

    const/16 v22, 0x14

    const/16 v23, 0x14

    const/16 v24, 0x14

    const/16 v25, 0x14

    const/16 v26, 0xa

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->CHART:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v19, v0

    const-string v28, "TABLE"

    const/16 v29, 0xb

    const/16 v30, 0x15

    const/16 v31, 0x15

    const/16 v32, 0x15

    const/16 v33, 0x15

    const/16 v34, 0xb

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v34}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TABLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v20, v0

    const-string v36, "CLIP_ART"

    const/16 v37, 0xc

    const/16 v38, 0x16

    const/16 v39, 0x16

    const/16 v40, 0x16

    const/16 v41, 0x16

    const/16 v42, 0xc

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v42}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->CLIP_ART:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v21, v0

    const-string v23, "DGM"

    const/16 v24, 0xd

    const/16 v25, 0x17

    const/16 v26, 0x17

    const/16 v27, 0x17

    const/16 v28, 0x17

    const/16 v29, 0xd

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v29}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->DGM:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v22, v0

    const-string v31, "MEDIA"

    const/16 v32, 0xe

    const/16 v33, 0x18

    const/16 v34, 0x18

    const/16 v35, 0x18

    const/16 v36, 0x18

    const/16 v37, 0xe

    move-object/from16 v30, v0

    invoke-direct/range {v30 .. v37}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->MEDIA:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v23, v0

    const-string v39, "SLIDE_IMAGE"

    const/16 v40, 0xf

    const/16 v41, 0xb

    const/16 v42, 0xb

    const/16 v43, 0xb

    const/16 v44, 0x5

    const/16 v45, 0xf

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v45}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->SLIDE_IMAGE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v24, v0

    const-string v26, "PICTURE"

    const/16 v27, 0x10

    const/16 v28, 0x1a

    const/16 v29, 0x1a

    const/16 v30, 0x1a

    const/16 v31, 0x1a

    const/16 v32, 0x10

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v32}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->PICTURE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v25, v0

    const-string v34, "VERTICAL_OBJECT"

    const/16 v35, 0x11

    const/16 v36, 0x19

    const/16 v37, 0x19

    const/16 v38, 0x19

    const/16 v39, 0x19

    const/16 v40, -0x2

    move-object/from16 v33, v0

    invoke-direct/range {v33 .. v40}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->VERTICAL_OBJECT:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v26, v0

    const-string v42, "VERTICAL_TEXT_TITLE"

    const/16 v43, 0x12

    const/16 v44, 0x11

    const/16 v45, 0x11

    const/16 v46, 0x11

    const/16 v47, 0x11

    const/16 v48, -0x2

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v48}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->VERTICAL_TEXT_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v27, v0

    const-string v29, "VERTICAL_TEXT_BODY"

    const/16 v30, 0x13

    const/16 v31, 0x12

    const/16 v32, 0x12

    const/16 v33, 0x12

    const/16 v34, 0x12

    const/16 v35, -0x2

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v35}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->VERTICAL_TEXT_BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    filled-new-array/range {v8 .. v27}, [Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->$VALUES:[Lorg/apache/poi/sl/usermodel/Placeholder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideMasterId:I

    iput p5, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesId:I

    iput p6, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesMasterId:I

    iput p7, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    return-void
.end method

.method private static lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/Placeholder;->values()[Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-nez p1, :cond_0

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideId:I

    if-eq v4, p0, :cond_3

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideMasterId:I

    if-eq v4, p0, :cond_3

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesId:I

    if-eq v4, p0, :cond_3

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesMasterId:I

    if-ne v4, p0, :cond_4

    :cond_3
    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static lookupNativeNotes(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupNativeNotesMaster(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupNativeSlide(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupNativeSlideMaster(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/Placeholder;->values()[Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/Placeholder;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->$VALUES:[Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/Placeholder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/Placeholder;

    return-object v0
.end method
