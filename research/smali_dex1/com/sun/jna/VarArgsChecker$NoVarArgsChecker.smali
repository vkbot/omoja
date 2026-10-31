.class final Lcom/sun/jna/VarArgsChecker$NoVarArgsChecker;
.super Lcom/sun/jna/VarArgsChecker;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/VarArgsChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoVarArgsChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sun/jna/VarArgsChecker;-><init>(Lcom/sun/jna/VarArgsChecker$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/jna/VarArgsChecker$1;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/sun/jna/VarArgsChecker$NoVarArgsChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public fixedArgs(Ljava/lang/reflect/Method;)I
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public isVarArgs(Ljava/lang/reflect/Method;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
