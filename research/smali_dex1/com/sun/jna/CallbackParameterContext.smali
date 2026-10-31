.class public Lcom/sun/jna/CallbackParameterContext;
.super Lcom/sun/jna/FromNativeContext;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private args:[Ljava/lang/Object;

.field private index:I

.field private method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/sun/jna/CallbackParameterContext;->method:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/sun/jna/CallbackParameterContext;->args:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p4, p0, Lcom/sun/jna/CallbackParameterContext;->index:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getArguments()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/CallbackParameterContext;->args:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/sun/jna/CallbackParameterContext;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/CallbackParameterContext;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method
