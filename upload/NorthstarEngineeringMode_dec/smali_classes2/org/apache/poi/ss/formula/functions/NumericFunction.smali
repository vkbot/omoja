.class public abstract Lorg/apache/poi/ss/formula/functions/NumericFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;,
        Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ABS:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ACOS:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ACOSH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ASIN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ASINH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ATAN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ATAN2:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ATANH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final CEILING:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final COMBIN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final COS:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final COSH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final DEGREES:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final DOLLAR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final EVEN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final EXP:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final FACT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final FLOOR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final INT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LOG:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LOG10:Lorg/apache/poi/ss/formula/functions/Function;

.field private static final LOG_10_TO_BASE_e:D

.field public static final MOD:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ODD:Lorg/apache/poi/ss/formula/functions/Function;

.field private static final PARITY_MASK:J = -0x2L

.field public static final PI:Lorg/apache/poi/ss/formula/functions/Function;

.field static final PI_EVAL:Lorg/apache/poi/ss/formula/eval/NumberEval;

.field public static final POISSON:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final POWER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final RADIANS:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final RAND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ROUND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ROUNDDOWN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ROUNDUP:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SIGN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SIN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SINH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SQRT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TAN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TANH:Lorg/apache/poi/ss/formula/functions/Function;

.field private static final TEN:D = 10.0

.field public static final TRUNC:Lorg/apache/poi/ss/formula/functions/Function;

.field private static final ZERO:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG_10_TO_BASE_e:D

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ABS:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ACOS:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ACOSH:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ASIN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/16 v5, 0xc

    invoke-direct {v0, v5}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ASINH:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    const/16 v6, 0x9

    invoke-direct {v0, v6}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATAN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    const/16 v7, 0xb

    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATANH:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/16 v8, 0xd

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COS:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COSH:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v5}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->DEGREES:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/d;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lorg/apache/poi/ss/formula/functions/d;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->DOLLAR:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->EXP:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/4 v8, 0x3

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->FACT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v5}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->INT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/4 v9, 0x4

    invoke-direct {v0, v9}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG10:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->RADIANS:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v9}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SIGN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SIN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SINH:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/4 v10, 0x6

    invoke-direct {v0, v10}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SQRT:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v9}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TAN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v10}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TANH:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATAN2:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->CEILING:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COMBIN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->FLOOR:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v10}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->MOD:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->POWER:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    invoke-direct {v0, v6}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUND:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/k;

    invoke-direct {v0, v6}, Lorg/apache/poi/ss/formula/functions/k;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUNDDOWN:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUNDUP:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/d;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/d;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TRUNC:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/b;

    invoke-direct {v0, v5}, Lorg/apache/poi/ss/formula/functions/b;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v0, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->PI_EVAL:Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/c;

    invoke-direct {v0, v5}, Lorg/apache/poi/ss/formula/functions/c;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->PI:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/d;

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/functions/d;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->RAND:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/b;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/b;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->POISSON:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/l;

    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/functions/l;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ODD:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/functions/m;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/m;-><init>(I)V

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->EVEN:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;[Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$oneDouble$7(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;[Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(DD)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$static$3(DD)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->evaluatePI([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static checkValue(D)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method public static synthetic d([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->evaluateDollar([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;[Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$twoDouble$8(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;[Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method private static evaluateDollar([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    const-string v0, "("

    array-length v1, p0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    array-length v1, p0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v3, p0, v1

    invoke-static {v3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v3

    array-length v5, p0

    if-ne v5, v2, :cond_1

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_1
    aget-object p0, p0, v2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p0

    :goto_0
    double-to-int p0, p0

    const/16 p1, 0x7f

    if-le p0, p1, :cond_2

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-gez p0, :cond_3

    neg-int p1, p0

    int-to-double p1, p1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    sget-object v2, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p2, p1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v3

    :cond_3
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    check-cast p1, Ljava/text/DecimalFormat;

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v1, "US"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    new-instance p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u00a0"

    const-string v0, " "

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private static evaluateEven(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-long v2, v0

    const-wide/16 v4, -0x2

    and-long/2addr v2, v4

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MathX;->sign(D)S

    move-result p0

    int-to-double p0, p0

    long-to-double v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2

    add-long/2addr v2, v0

    :goto_0
    long-to-double v0, v2

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static evaluateOdd(D)D
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v3, v1

    double-to-long v0, v3

    const-wide/16 v5, -0x2

    and-long/2addr v0, v5

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MathX;->sign(D)S

    move-result p0

    int-to-double p0, p0

    long-to-double v5, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    sub-long/2addr v0, v3

    goto :goto_0

    :cond_1
    add-long/2addr v0, v3

    :goto_0
    long-to-double v0, v0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method private static evaluatePI([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    array-length p0, p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->PI_EVAL:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :goto_0
    return-object p0
.end method

.method private static evaluateRand([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    array-length p0, p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    :goto_0
    return-object p0
.end method

.method private static evaluateTrunc([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    array-length v0, p0

    if-ne v0, v1, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    aget-object p0, p0, v1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p0

    :goto_0
    invoke-static {v2, v3, p0, p1}, Lorg/apache/poi/ss/formula/functions/MathX;->roundDown(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->evaluateRand([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(DD)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$static$5(DD)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(DD)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$static$6(DD)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->evaluateEven(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic j(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$static$0(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic k(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->evaluateOdd(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic l([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->evaluateTrunc([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$oneDouble$7(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;[Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;->apply(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p2

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(D)D
    .locals 2

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$static$1(D)D
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0
.end method

.method private static synthetic lambda$static$2(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG_10_TO_BASE_e:D

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static synthetic lambda$static$3(DD)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$static$4(DD)Ljava/lang/Object;
    .locals 3

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_1

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-int p0, p0

    double-to-int p1, p2

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/MathX;->nChooseK(II)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$static$5(DD)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_1

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/MathX;->floor(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$static$6(DD)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/MathX;->mod(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$twoDouble$8(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;[Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;->apply(DD)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p2

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(DD)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$static$4(DD)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$static$2(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic o(D)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->lambda$static$1(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static oneDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/n;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/n;-><init>(Lorg/apache/poi/ss/formula/functions/NumericFunction$OneDoubleIf;)V

    return-object v0
.end method

.method public static singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static twoDouble(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/o;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/o;-><init>(Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoDoubleIf;)V

    return-object v0
.end method


# virtual methods
.method public abstract eval([Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
.end method

.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->eval([Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method
