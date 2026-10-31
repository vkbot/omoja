.class public Lorg/apache/commons/io/output/NullAppendable;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Appendable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/output/NullAppendable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/NullAppendable;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/NullAppendable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/output/NullAppendable;->INSTANCE:Lorg/apache/commons/io/output/NullAppendable;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .registers 2

    .line 6
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2

    .line 5
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromToIndex(Ljava/lang/CharSequence;II)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
