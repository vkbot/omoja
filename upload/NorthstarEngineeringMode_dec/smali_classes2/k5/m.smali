.class public Lk5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/m$i;,
        Lk5/m$f;,
        Lk5/m$d;,
        Lk5/m$g;,
        Lk5/m$b;,
        Lk5/m$a;,
        Lk5/m$c;,
        Lk5/m$h;,
        Lk5/m$e;
    }
.end annotation


# static fields
.field public static final Z:Lk5/f;

.field public static final b1:Lk5/f;

.field public static final c1:Lk5/f;

.field public static final d1:Lk5/f;

.field public static final e1:Lk5/m;

.field public static final f1:Lk5/m$a;

.field public static final g1:Lk5/m$a;

.field public static final h1:Lk5/m$a;

.field public static final i1:Lk5/m$a;

.field public static final j1:Lk5/m$a;

.field public static final k1:Lk5/m$a;

.field public static final l1:Lk5/m$a;

.field public static final m1:Lk5/m$a;

.field public static final n1:Lk5/m$a;

.field public static final o1:Ljava/util/Hashtable;

.field public static final p1:Ljava/util/Hashtable;

.field public static final q1:[Ljava/lang/String;

.field public static final r:Lk5/m;

.field public static final r1:[Ljava/lang/String;

.field public static final s1:[I

.field public static t1:Ljava/util/Hashtable;

.field public static u1:Lk5/m$c;

.field public static v1:Lk5/m$c;

.field public static final x:Lk5/f;

.field public static final y:Lk5/f;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 94

    new-instance v0, Lk5/m;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lk5/m;-><init>(I)V

    sput-object v0, Lk5/m;->e1:Lk5/m;

    const/16 v0, 0x5e

    invoke-static {v0}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v0

    sput-object v0, Lk5/m;->f1:Lk5/m$a;

    const/16 v0, 0x24

    invoke-static {v0}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v0

    sput-object v0, Lk5/m;->g1:Lk5/m$a;

    const/16 v0, 0x41

    invoke-static {v0}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v1

    sput-object v1, Lk5/m;->h1:Lk5/m$a;

    const/16 v1, 0x7a

    invoke-static {v1}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v2

    sput-object v2, Lk5/m;->i1:Lk5/m$a;

    const/16 v2, 0x5a

    invoke-static {v2}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v3

    sput-object v3, Lk5/m;->j1:Lk5/m$a;

    const/16 v3, 0x62

    invoke-static {v3}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v3

    sput-object v3, Lk5/m;->k1:Lk5/m$a;

    const/16 v3, 0x42

    invoke-static {v3}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v3

    sput-object v3, Lk5/m;->l1:Lk5/m$a;

    const/16 v3, 0x3c

    invoke-static {v3}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v3

    sput-object v3, Lk5/m;->m1:Lk5/m$a;

    const/16 v3, 0x3e

    invoke-static {v3}, Lk5/m;->e(I)Lk5/m$a;

    move-result-object v3

    sput-object v3, Lk5/m;->n1:Lk5/m$a;

    new-instance v3, Lk5/m;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lk5/m;-><init>(I)V

    sput-object v3, Lk5/m;->r:Lk5/m;

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v3

    sput-object v3, Lk5/m;->x:Lk5/f;

    const/16 v4, 0x30

    const/16 v5, 0x39

    invoke-virtual {v3, v4, v5}, Lk5/f;->b(II)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v6

    sput-object v6, Lk5/m;->y:Lk5/f;

    invoke-virtual {v6, v4, v5}, Lk5/f;->b(II)V

    invoke-virtual {v6, v0, v2}, Lk5/f;->b(II)V

    const/16 v0, 0x5f

    invoke-virtual {v6, v0, v0}, Lk5/f;->b(II)V

    const/16 v0, 0x61

    invoke-virtual {v6, v0, v1}, Lk5/f;->b(II)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v0

    sput-object v0, Lk5/m;->c1:Lk5/f;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v1}, Lk5/f;->b(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v1}, Lk5/f;->b(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v1}, Lk5/f;->b(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v1}, Lk5/f;->b(II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v1}, Lk5/f;->b(II)V

    invoke-static {v3}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v1

    sput-object v1, Lk5/m;->Z:Lk5/f;

    invoke-static {v6}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v1

    sput-object v1, Lk5/m;->b1:Lk5/f;

    invoke-static {v0}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v0

    sput-object v0, Lk5/m;->d1:Lk5/f;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lk5/m;->o1:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lk5/m;->p1:Ljava/util/Hashtable;

    const-string v1, "Cn"

    const-string v2, "Lu"

    const-string v3, "Ll"

    const-string v4, "Lt"

    const-string v5, "Lm"

    const-string v6, "Lo"

    const-string v7, "Mn"

    const-string v8, "Me"

    const-string v9, "Mc"

    const-string v10, "Nd"

    const-string v11, "Nl"

    const-string v12, "No"

    const-string v13, "Zs"

    const-string v14, "Zl"

    const-string v15, "Zp"

    const-string v16, "Cc"

    const-string v17, "Cf"

    const/16 v18, 0x0

    const-string v19, "Co"

    const-string v20, "Cs"

    const-string v21, "Pd"

    const-string v22, "Ps"

    const-string v23, "Pe"

    const-string v24, "Pc"

    const-string v25, "Po"

    const-string v26, "Sm"

    const-string v27, "Sc"

    const-string v28, "Sk"

    const-string v29, "So"

    const-string v30, "Pi"

    const-string v31, "Pf"

    const-string v32, "L"

    const-string v33, "M"

    const-string v34, "N"

    const-string v35, "Z"

    const-string v36, "C"

    const-string v37, "P"

    const-string v38, "S"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk5/m;->q1:[Ljava/lang/String;

    const-string v1, "Basic Latin"

    const-string v2, "Latin-1 Supplement"

    const-string v3, "Latin Extended-A"

    const-string v4, "Latin Extended-B"

    const-string v5, "IPA Extensions"

    const-string v6, "Spacing Modifier Letters"

    const-string v7, "Combining Diacritical Marks"

    const-string v8, "Greek"

    const-string v9, "Cyrillic"

    const-string v10, "Armenian"

    const-string v11, "Hebrew"

    const-string v12, "Arabic"

    const-string v13, "Syriac"

    const-string v14, "Thaana"

    const-string v15, "Devanagari"

    const-string v16, "Bengali"

    const-string v17, "Gurmukhi"

    const-string v18, "Gujarati"

    const-string v19, "Oriya"

    const-string v20, "Tamil"

    const-string v21, "Telugu"

    const-string v22, "Kannada"

    const-string v23, "Malayalam"

    const-string v24, "Sinhala"

    const-string v25, "Thai"

    const-string v26, "Lao"

    const-string v27, "Tibetan"

    const-string v28, "Myanmar"

    const-string v29, "Georgian"

    const-string v30, "Hangul Jamo"

    const-string v31, "Ethiopic"

    const-string v32, "Cherokee"

    const-string v33, "Unified Canadian Aboriginal Syllabics"

    const-string v34, "Ogham"

    const-string v35, "Runic"

    const-string v36, "Khmer"

    const-string v37, "Mongolian"

    const-string v38, "Latin Extended Additional"

    const-string v39, "Greek Extended"

    const-string v40, "General Punctuation"

    const-string v41, "Superscripts and Subscripts"

    const-string v42, "Currency Symbols"

    const-string v43, "Combining Marks for Symbols"

    const-string v44, "Letterlike Symbols"

    const-string v45, "Number Forms"

    const-string v46, "Arrows"

    const-string v47, "Mathematical Operators"

    const-string v48, "Miscellaneous Technical"

    const-string v49, "Control Pictures"

    const-string v50, "Optical Character Recognition"

    const-string v51, "Enclosed Alphanumerics"

    const-string v52, "Box Drawing"

    const-string v53, "Block Elements"

    const-string v54, "Geometric Shapes"

    const-string v55, "Miscellaneous Symbols"

    const-string v56, "Dingbats"

    const-string v57, "Braille Patterns"

    const-string v58, "CJK Radicals Supplement"

    const-string v59, "Kangxi Radicals"

    const-string v60, "Ideographic Description Characters"

    const-string v61, "CJK Symbols and Punctuation"

    const-string v62, "Hiragana"

    const-string v63, "Katakana"

    const-string v64, "Bopomofo"

    const-string v65, "Hangul Compatibility Jamo"

    const-string v66, "Kanbun"

    const-string v67, "Bopomofo Extended"

    const-string v68, "Enclosed CJK Letters and Months"

    const-string v69, "CJK Compatibility"

    const-string v70, "CJK Unified Ideographs Extension A"

    const-string v71, "CJK Unified Ideographs"

    const-string v72, "Yi Syllables"

    const-string v73, "Yi Radicals"

    const-string v74, "Hangul Syllables"

    const-string v75, "Private Use"

    const-string v76, "CJK Compatibility Ideographs"

    const-string v77, "Alphabetic Presentation Forms"

    const-string v78, "Arabic Presentation Forms-A"

    const-string v79, "Combining Half Marks"

    const-string v80, "CJK Compatibility Forms"

    const-string v81, "Small Form Variants"

    const-string v82, "Arabic Presentation Forms-B"

    const-string v83, "Specials"

    const-string v84, "Halfwidth and Fullwidth Forms"

    const-string v85, "Old Italic"

    const-string v86, "Gothic"

    const-string v87, "Deseret"

    const-string v88, "Byzantine Musical Symbols"

    const-string v89, "Musical Symbols"

    const-string v90, "Mathematical Alphanumeric Symbols"

    const-string v91, "CJK Unified Ideographs Extension B"

    const-string v92, "CJK Compatibility Ideographs Supplement"

    const-string v93, "Tags"

    filled-new-array/range {v1 .. v93}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk5/m;->r1:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lk5/m;->s1:[I

    const/4 v0, 0x0

    sput-object v0, Lk5/m;->t1:Ljava/util/Hashtable;

    sput-object v0, Lk5/m;->u1:Lk5/m$c;

    sput-object v0, Lk5/m;->v1:Lk5/m$c;

    return-void

    :array_0
    .array-data 4
        0x10300
        0x1032f
        0x10330
        0x1034f
        0x10400
        0x1044f
        0x1d000
        0x1d0ff
        0x1d100
        0x1d1ff
        0x1d400
        0x1d7ff
        0x20000
        0x2a6d6
        0x2f800
        0x2fa1f
        0xe0000
        0xe007f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk5/m;->c:I

    return-void
.end method

.method public static d(Lk5/m;)Lk5/f;
    .locals 11

    iget v0, p0, Lk5/m;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Token#complementRanges(): must be RANGE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lk5/m;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p0, Lk5/f;

    invoke-virtual {p0}, Lk5/f;->H()V

    invoke-virtual {p0}, Lk5/f;->B()V

    iget-object v0, p0, Lk5/f;->w1:[I

    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    aget v4, v0, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    array-length v2, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget v0, v0, v2

    const v2, 0x10ffff

    if-ne v0, v2, :cond_3

    add-int/lit8 v1, v1, -0x2

    :cond_3
    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v5

    new-array v1, v1, [I

    iput-object v1, v5, Lk5/f;->w1:[I

    iget-object v6, p0, Lk5/f;->w1:[I

    aget v7, v6, v3

    const/4 v8, 0x2

    if-lez v7, :cond_4

    aput v3, v1, v3

    aget v3, v6, v3

    sub-int/2addr v3, v4

    aput v3, v1, v4

    move v3, v8

    :cond_4
    move v1, v4

    :goto_2
    iget-object v6, p0, Lk5/f;->w1:[I

    array-length v7, v6

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_5

    iget-object v7, v5, Lk5/f;->w1:[I

    add-int/lit8 v9, v3, 0x1

    aget v10, v6, v1

    add-int/2addr v10, v4

    aput v10, v7, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v10, v1, 0x1

    aget v6, v6, v10

    sub-int/2addr v6, v4

    aput v6, v7, v9

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_5
    if-eq v0, v2, :cond_6

    iget-object p0, v5, Lk5/f;->w1:[I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v4

    aput v0, p0, v3

    aput v2, p0, v1

    :cond_6
    iput-boolean v4, v5, Lk5/f;->y1:Z

    return-object v5
.end method

.method public static e(I)Lk5/m$a;
    .locals 2

    new-instance v0, Lk5/m$a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lk5/m$a;-><init>(II)V

    return-object v0
.end method

.method public static f(I)Lk5/m$a;
    .locals 2

    new-instance v0, Lk5/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lk5/m$a;-><init>(II)V

    return-object v0
.end method

.method public static g(Lk5/m;)Lk5/m$b;
    .locals 2

    new-instance v0, Lk5/m$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lk5/m$b;-><init>(ILk5/m;)V

    return-object v0
.end method

.method public static h(Lk5/m;Lk5/m;)Lk5/m$c;
    .locals 2

    new-instance v0, Lk5/m$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk5/m;-><init>(I)V

    iput-object p0, v0, Lk5/m$c;->w1:Lk5/m;

    iput-object p1, v0, Lk5/m$c;->x1:Lk5/m;

    return-object v0
.end method

.method public static i(ILk5/m;)Lk5/m$g;
    .locals 2

    new-instance v0, Lk5/m$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lk5/m$g;-><init>(IILk5/m;)V

    return-object v0
.end method

.method public static j(ILk5/m;)Lk5/m$g;
    .locals 2

    new-instance v0, Lk5/m$g;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lk5/m$g;-><init>(IILk5/m;)V

    return-object v0
.end method

.method public static k()Lk5/f;
    .locals 2

    new-instance v0, Lk5/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lk5/f;-><init>(I)V

    return-object v0
.end method

.method public static m()Lk5/m$i;
    .locals 2

    new-instance v0, Lk5/m$i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk5/m;-><init>(I)V

    return-object v0
.end method

.method public static v(Ljava/lang/String;Z)Lk5/f;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lk5/m;->o1:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_11

    monitor-enter v1

    :try_start_0
    sget-object v2, Lk5/m;->q1:[Ljava/lang/String;

    array-length v2, v2

    new-array v3, v2, [Lk5/m;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move v5, v4

    :goto_1
    const/16 v6, 0x23

    const/16 v7, 0x22

    const/high16 v8, 0x10000

    const/16 v9, 0x20

    if-ge v5, v8, :cond_6

    int-to-char v8, v5

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v8

    const/16 v10, 0x15

    if-eq v8, v10, :cond_1

    const/16 v10, 0x16

    if-ne v8, v10, :cond_5

    :cond_1
    const/16 v10, 0xab

    if-eq v5, v10, :cond_2

    const/16 v10, 0x2018

    if-eq v5, v10, :cond_2

    const/16 v10, 0x201b

    if-eq v5, v10, :cond_2

    const/16 v10, 0x201c

    if-eq v5, v10, :cond_2

    const/16 v10, 0x201f

    if-eq v5, v10, :cond_2

    const/16 v10, 0x2039

    if-ne v5, v10, :cond_3

    :cond_2
    const/16 v8, 0x1d

    :cond_3
    const/16 v10, 0xbb

    if-eq v5, v10, :cond_4

    const/16 v10, 0x2019

    if-eq v5, v10, :cond_4

    const/16 v10, 0x201d

    if-eq v5, v10, :cond_4

    const/16 v10, 0x203a

    if-ne v5, v10, :cond_5

    :cond_4
    const/16 v8, 0x1e

    :cond_5
    aget-object v10, v3, v8

    invoke-virtual {v10, v5, v5}, Lk5/m;->b(II)V

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.apache.xerces.utils.regex.Token#getRange(): Unknown Unicode category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v6, 0x25

    goto :goto_2

    :pswitch_2
    const/16 v6, 0x24

    goto :goto_2

    :pswitch_3
    move v6, v7

    goto :goto_2

    :pswitch_4
    const/16 v6, 0x21

    goto :goto_2

    :pswitch_5
    move v6, v9

    goto :goto_2

    :pswitch_6
    const/16 v6, 0x1f

    :goto_2
    :pswitch_7
    aget-object v6, v3, v6

    invoke-virtual {v6, v5, v5}, Lk5/m;->b(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    aget-object v5, v3, v4

    const v10, 0x10ffff

    invoke-virtual {v5, v8, v10}, Lk5/m;->b(II)V

    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_9

    sget-object v11, Lk5/m;->q1:[Ljava/lang/String;

    aget-object v12, v11, v5

    if-eqz v12, :cond_8

    if-nez v5, :cond_7

    aget-object v12, v3, v5

    invoke-virtual {v12, v8, v10}, Lk5/m;->b(II)V

    :cond_7
    sget-object v12, Lk5/m;->o1:Ljava/util/Hashtable;

    aget-object v13, v11, v5

    aget-object v14, v3, v5

    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lk5/m;->p1:Ljava/util/Hashtable;

    aget-object v11, v11, v5

    aget-object v13, v3, v5

    invoke-static {v13}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x32

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v5, v4

    :goto_4
    sget-object v8, Lk5/m;->r1:[Ljava/lang/String;

    array-length v11, v8

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v5, v11, :cond_10

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v11

    const/16 v14, 0x54

    if-ge v5, v14, :cond_a

    mul-int/lit8 v12, v5, 0x2

    const-string v14, "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const-string v15, "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v14, v12}, Lk5/f;->b(II)V

    goto :goto_5

    :cond_a
    add-int/lit8 v14, v5, -0x54

    mul-int/2addr v14, v12

    sget-object v12, Lk5/m;->s1:[I

    aget v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    aget v12, v12, v14

    invoke-virtual {v11, v15, v12}, Lk5/f;->b(II)V

    :goto_5
    aget-object v8, v8, v5

    const-string v12, "Specials"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const v12, 0xfff0

    const v14, 0xfffd

    invoke-virtual {v11, v12, v14}, Lk5/f;->b(II)V

    :cond_b
    const-string v12, "Private Use"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0xf0000

    const v14, 0xffffd

    invoke-virtual {v11, v12, v14}, Lk5/f;->b(II)V

    const/high16 v12, 0x100000

    const v14, 0x10fffd

    invoke-virtual {v11, v12, v14}, Lk5/f;->b(II)V

    :cond_c
    sget-object v12, Lk5/m;->o1:Ljava/util/Hashtable;

    invoke-virtual {v12, v8, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lk5/m;->p1:Ljava/util/Hashtable;

    invoke-static {v11}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v11

    invoke-virtual {v12, v8, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v11, "Is"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_e

    move v11, v4

    :goto_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_f

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v9, :cond_d

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_10
    const-string v2, "ASSIGNED"

    const-string v5, "Cn"

    invoke-static {v2, v5, v4}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "UNASSIGNED"

    const-string v5, "Cn"

    invoke-static {v2, v5, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    invoke-virtual {v2, v4, v10}, Lk5/f;->b(II)V

    sget-object v5, Lk5/m;->o1:Ljava/util/Hashtable;

    const-string v8, "ALL"

    invoke-virtual {v5, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lk5/m;->p1:Ljava/util/Hashtable;

    const-string v10, "ALL"

    invoke-static {v2}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v2

    invoke-virtual {v8, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ASSIGNED"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "UNASSIGNED"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "ALL"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    aget-object v10, v3, v13

    invoke-virtual {v2, v10}, Lk5/f;->G(Lk5/m;)V

    aget-object v10, v3, v12

    invoke-virtual {v2, v10}, Lk5/f;->G(Lk5/m;)V

    const/4 v10, 0x5

    aget-object v10, v3, v10

    invoke-virtual {v2, v10}, Lk5/f;->G(Lk5/m;)V

    const-string v10, "IsAlpha"

    invoke-virtual {v5, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "IsAlpha"

    invoke-static {v2}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "IsAlpha"

    invoke-static {v10}, Lk5/m;->y(Ljava/lang/String;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v10

    invoke-virtual {v10, v2}, Lk5/f;->G(Lk5/m;)V

    const/16 v2, 0x9

    aget-object v2, v3, v2

    invoke-virtual {v10, v2}, Lk5/f;->G(Lk5/m;)V

    const-string v2, "IsAlnum"

    invoke-virtual {v5, v2, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IsAlnum"

    invoke-static {v10}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v11

    invoke-virtual {v8, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IsAlnum"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    sget-object v11, Lk5/m;->c1:Lk5/f;

    invoke-virtual {v2, v11}, Lk5/f;->G(Lk5/m;)V

    aget-object v7, v3, v7

    invoke-virtual {v2, v7}, Lk5/f;->G(Lk5/m;)V

    const-string v7, "IsSpace"

    invoke-virtual {v5, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "IsSpace"

    invoke-static {v2}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v2

    invoke-virtual {v8, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IsSpace"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    invoke-virtual {v2, v10}, Lk5/f;->G(Lk5/m;)V

    const/16 v7, 0x5f

    invoke-virtual {v2, v7, v7}, Lk5/f;->b(II)V

    const-string v7, "IsWord"

    invoke-virtual {v5, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "IsWord"

    invoke-static {v2}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v2

    invoke-virtual {v8, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IsWord"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    const/16 v7, 0x7f

    invoke-virtual {v2, v4, v7}, Lk5/f;->b(II)V

    const-string v7, "IsASCII"

    invoke-virtual {v5, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "IsASCII"

    invoke-static {v2}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v2

    invoke-virtual {v8, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IsASCII"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lk5/f;->G(Lk5/m;)V

    invoke-virtual {v2, v9, v9}, Lk5/f;->b(II)V

    const-string v3, "IsGraph"

    invoke-static {v2}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "IsGraph"

    invoke-virtual {v8, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IsGraph"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v2

    const/16 v3, 0x30

    const/16 v6, 0x39

    invoke-virtual {v2, v3, v6}, Lk5/f;->b(II)V

    const/16 v3, 0x41

    const/16 v6, 0x46

    invoke-virtual {v2, v3, v6}, Lk5/f;->b(II)V

    const/16 v3, 0x61

    const/16 v6, 0x66

    invoke-virtual {v2, v3, v6}, Lk5/f;->b(II)V

    const-string v3, "IsXDigit"

    invoke-static {v2}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "IsXDigit"

    invoke-virtual {v8, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IsXDigit"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "IsDigit"

    const-string v3, "Nd"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IsUpper"

    const-string v3, "Lu"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IsLower"

    const-string v3, "Ll"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IsCntrl"

    const-string v3, "C"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IsPrint"

    const-string v3, "C"

    invoke-static {v2, v3, v4}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IsPunct"

    const-string v3, "P"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "IsDigit"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "IsUpper"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "IsLower"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "IsCntrl"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "IsPrint"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "IsPunct"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "alpha"

    const-string v3, "IsAlpha"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "alnum"

    const-string v3, "IsAlnum"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "ascii"

    const-string v3, "IsASCII"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "cntrl"

    const-string v3, "IsCntrl"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "digit"

    const-string v3, "IsDigit"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "graph"

    const-string v3, "IsGraph"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "lower"

    const-string v3, "IsLower"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "print"

    const-string v3, "IsPrint"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "punct"

    const-string v3, "IsPunct"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "space"

    const-string v3, "IsSpace"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "upper"

    const-string v3, "IsUpper"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "word"

    const-string v3, "IsWord"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "xdigit"

    const-string v3, "IsXDigit"

    invoke-static {v2, v3, v13}, Lk5/m;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "alpha"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "alnum"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "ascii"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "cntrl"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "digit"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "graph"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "lower"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "print"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "punct"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "space"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "upper"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "word"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    const-string v2, "xdigit"

    invoke-static {v2}, Lk5/m;->y(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_8

    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_11
    :goto_8
    if-eqz p1, :cond_12

    sget-object v1, Lk5/m;->o1:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk5/f;

    goto :goto_9

    :cond_12
    sget-object v1, Lk5/m;->p1:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk5/f;

    :goto_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static y(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lk5/m;->t1:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lk5/m;->t1:Ljava/util/Hashtable;

    :cond_0
    sget-object v0, Lk5/m;->t1:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lk5/m;->o1:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/m;

    sget-object v2, Lk5/m;->p1:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/m;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public A(I)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lk5/m;->c:I

    const/16 p1, 0xb

    if-ne p0, p1, :cond_0

    const-string p0, "."

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public a(Lk5/m;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(II)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lk5/f;I)I
    .locals 7

    iget v0, p0, Lk5/m;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Token#analyzeHeadCharacter(): Invalid Type: "

    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v4}, Lk5/m;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk5/m;->c(Lk5/f;I)I

    move-result v0

    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    return v4

    :cond_0
    if-ne v0, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lk5/m;->c(Lk5/f;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    return p0

    :cond_2
    if-eqz v0, :cond_3

    if-nez p0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1

    :pswitch_1
    move-object v0, p0

    check-cast v0, Lk5/m$f;

    iget v1, v0, Lk5/m$f;->x1:I

    or-int/2addr p2, v1

    iget v0, v0, Lk5/m$f;->y1:I

    not-int v0, v0

    and-int/2addr p2, v0

    invoke-virtual {p0, v4}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lk5/m;->c(Lk5/f;I)I

    move-result p0

    return p0

    :pswitch_2
    return v4

    :pswitch_3
    const p0, 0x10ffff

    invoke-virtual {p1, v4, p0}, Lk5/f;->b(II)V

    return v2

    :pswitch_4
    return v4

    :pswitch_5
    invoke-virtual {p0}, Lk5/m;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ld/f;->M(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lk5/m;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_5

    invoke-virtual {p0}, Lk5/m;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const v4, 0xfc00

    and-int/2addr v4, p0

    const v5, 0xdc00

    if-ne v4, v5, :cond_5

    invoke-static {v0, p0}, Ld/f;->l(II)I

    move-result v0

    :cond_5
    invoke-virtual {p1, v0, v0}, Lk5/f;->b(II)V

    if-ge v0, v3, :cond_6

    and-int/lit8 p0, p2, 0x2

    if-ne p0, v2, :cond_6

    int-to-char p0, v0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-virtual {p1, p0, p0}, Lk5/f;->b(II)V

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-virtual {p1, p0, p0}, Lk5/f;->b(II)V

    :cond_6
    return v1

    :pswitch_6
    return v4

    :pswitch_7
    invoke-virtual {p0, v4}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lk5/m;->c(Lk5/f;I)I

    move-result p0

    return p0

    :pswitch_8
    and-int/2addr p2, v2

    if-ne p2, v2, :cond_7

    check-cast p0, Lk5/f;

    invoke-virtual {p0}, Lk5/f;->D()Lk5/f;

    move-result-object p0

    invoke-static {p0}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk5/f;->G(Lk5/m;)V

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lk5/m;->d(Lk5/m;)Lk5/f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk5/f;->G(Lk5/m;)V

    :goto_0
    return v1

    :pswitch_9
    and-int/2addr p2, v2

    if-ne p2, v2, :cond_8

    check-cast p0, Lk5/f;

    invoke-virtual {p0}, Lk5/f;->D()Lk5/f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk5/f;->G(Lk5/m;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p0}, Lk5/f;->G(Lk5/m;)V

    :goto_1
    return v1

    :pswitch_a
    invoke-virtual {p0, v4}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lk5/m;->c(Lk5/f;I)I

    return v4

    :pswitch_b
    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v0

    if-nez v0, :cond_9

    return v4

    :cond_9
    move v0, v4

    move v3, v0

    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v6

    if-ge v0, v6, :cond_c

    invoke-virtual {p0, v0}, Lk5/m;->q(I)Lk5/m;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lk5/m;->c(Lk5/f;I)I

    move-result v3

    if-ne v3, v2, :cond_a

    goto :goto_3

    :cond_a
    if-nez v3, :cond_b

    move v5, v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    if-eqz v5, :cond_d

    goto :goto_4

    :cond_d
    move v4, v3

    :goto_4
    return v4

    :pswitch_c
    move v0, v4

    :goto_5
    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v1

    if-ge v4, v1, :cond_f

    invoke-virtual {p0, v4}, Lk5/m;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk5/m;->c(Lk5/f;I)I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    return v0

    :pswitch_d
    invoke-virtual {p0}, Lk5/m;->p()I

    move-result p0

    invoke-virtual {p1, p0, p0}, Lk5/f;->b(II)V

    if-ge p0, v3, :cond_10

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_10

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-virtual {p1, p0, p0}, Lk5/f;->b(II)V

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-virtual {p1, p0, p0}, Lk5/f;->b(II)V

    :cond_10
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Lk5/m$e;I)V
    .locals 9

    iget v0, p0, Lk5/m;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Token#findFixedString(): Invalid Type: "

    invoke-static {p1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    move-object v0, p0

    check-cast v0, Lk5/m$f;

    iget v1, v0, Lk5/m$f;->x1:I

    or-int/2addr p2, v1

    iget v0, v0, Lk5/m$f;->y1:I

    not-int v0, v0

    and-int/2addr p2, v0

    invoke-virtual {p0, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lk5/m;->n(Lk5/m$e;I)V

    return-void

    :pswitch_1
    iput-object p0, p1, Lk5/m$e;->a:Lk5/m;

    iput p2, p1, Lk5/m$e;->b:I

    return-void

    :pswitch_2
    invoke-virtual {p0, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lk5/m;->n(Lk5/m$e;I)V

    return-void

    :pswitch_3
    iput-object v1, p1, Lk5/m$e;->a:Lk5/m;

    return-void

    :pswitch_4
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lk5/m;->n(Lk5/m$e;I)V

    if-eqz v1, :cond_3

    iget-object v3, p1, Lk5/m$e;->a:Lk5/m;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget v4, v1, Lk5/m;->c:I

    const-string v5, "Internal Error: Illegal type: "

    const/16 v6, 0xa

    if-ne v4, v6, :cond_2

    invoke-virtual {v1}, Lk5/m;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v7, v3, Lk5/m;->c:I

    if-ne v7, v6, :cond_1

    invoke-virtual {v3}, Lk5/m;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v5, v7}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v5, v4}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p1, Lk5/m$e;->a:Lk5/m;

    iget v1, p1, Lk5/m$e;->b:I

    move v8, v1

    move-object v1, v0

    move v0, v8

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iput-object v1, p1, Lk5/m$e;->a:Lk5/m;

    iput v0, p1, Lk5/m$e;->b:I

    return-void

    :pswitch_5
    iput-object v1, p1, Lk5/m$e;->a:Lk5/m;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public p()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public q(I)Lk5/m;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public r()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public s()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final t()I
    .locals 3

    iget v0, p0, Lk5/m;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Token#getMinLength(): Invalid Type: "

    invoke-static {v1, v0}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p0}, Lk5/m;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    invoke-virtual {p0, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0}, Lk5/m;->t()I

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0}, Lk5/m;->s()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lk5/m;->s()I

    move-result v0

    invoke-virtual {p0, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object p0

    invoke-virtual {p0}, Lk5/m;->t()I

    move-result p0

    mul-int/2addr p0, v0

    return p0

    :cond_0
    return v2

    :pswitch_5
    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object v0

    invoke-virtual {v0}, Lk5/m;->t()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lk5/m;->q(I)Lk5/m;

    move-result-object v2

    invoke-virtual {v2}, Lk5/m;->t()I

    move-result v2

    if-ge v2, v0, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :pswitch_6
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lk5/m;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Lk5/m;->q(I)Lk5/m;

    move-result-object v1

    invoke-virtual {v1}, Lk5/m;->t()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0

    :pswitch_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk5/m;->A(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public w()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
