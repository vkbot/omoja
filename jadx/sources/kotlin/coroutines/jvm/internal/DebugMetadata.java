package kotlin.coroutines.jvm.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.annotation.AnnotationTarget;
import kotlin.jvm.JvmName;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.TYPE})
@SinceKotlin(version = "1.3")
@Metadata(m3158d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0011\b\u0081\u0002\u0018\u00002\u00020\u0001B\u0084\u0001\u0012\u000e\b\u0002\u0010\u0002\u001a\u00020\u0003B\u0004\b\u0003\u0010\u0002\u0012\u000e\b\u0002\u0010\u0004\u001a\u00020\u0005B\u0004\b\b(\u0006\u0012\f\b\u0002\u0010\u0007\u001a\u00020\bB\u0002\b\f\u0012\u0012\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nB\u0002\b\f\u0012\u0012\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\nB\u0002\b\f\u0012\f\b\u0002\u0010\f\u001a\u00020\bB\u0002\b\f\u0012\u000e\b\u0002\u0010\r\u001a\u00020\u0005B\u0004\b\b(\u0006\u0012\u000e\b\u0002\u0010\u000e\u001a\u00020\u0005B\u0004\b\b(\u0006R\u0011\u0010\u0002\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n8G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n8G¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0016R\u0011\u0010\f\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0014R\u0011\u0010\r\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0012¨\u0006\u001b"}, m3159d2 = {"Lkotlin/coroutines/jvm/internal/DebugMetadata;", "", "version", "", "sourceFile", "", "", "lineNumbers", "", "localNames", "", "spilled", "indexToLabel", "methodName", "className", "v", "()I", "f", "()Ljava/lang/String;", "l", "()[I", "n", "()[Ljava/lang/String;", "s", "i", "m", "c", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS})
@Retention(RetentionPolicy.RUNTIME)
public @interface DebugMetadata {
    @JvmName(name = "c")
    /* JADX INFO: renamed from: c */
    String m3255c() default "";

    @JvmName(name = "f")
    /* JADX INFO: renamed from: f */
    String m3256f() default "";

    @JvmName(name = "i")
    /* JADX INFO: renamed from: i */
    int[] m3257i() default {};

    @JvmName(name = "l")
    /* JADX INFO: renamed from: l */
    int[] m3258l() default {};

    @JvmName(name = "m")
    /* JADX INFO: renamed from: m */
    String m3259m() default "";

    @JvmName(name = "n")
    /* JADX INFO: renamed from: n */
    String[] m3260n() default {};

    @JvmName(name = "s")
    /* JADX INFO: renamed from: s */
    String[] m3261s() default {};

    @JvmName(name = "v")
    /* JADX INFO: renamed from: v */
    int m3262v() default 1;
}
