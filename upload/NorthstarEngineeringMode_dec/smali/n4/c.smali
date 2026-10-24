.class public final Ln4/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final c:Ln4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln4/c;

    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    sput-object v0, Ln4/c;->c:Ln4/c;

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 2
    const/4 p0, -0x1

    return p0
.end method
