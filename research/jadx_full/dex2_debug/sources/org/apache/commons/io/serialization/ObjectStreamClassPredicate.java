package org.apache.commons.io.serialization;

import java.io.ObjectStreamClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ObjectStreamClassPredicate implements Predicate<ObjectStreamClass> {
    private final List<ClassNameMatcher> acceptMatchers = new ArrayList();
    private final List<ClassNameMatcher> rejectMatchers = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FullClassNameMatcher a(Class cls) {
        return lambda$reject$1(cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ FullClassNameMatcher b(Class cls) {
        return lambda$accept$0(cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ FullClassNameMatcher lambda$accept$0(Class cls) {
        return new FullClassNameMatcher(cls.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ FullClassNameMatcher lambda$reject$1(Class cls) {
        return new FullClassNameMatcher(cls.getName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ObjectStreamClassPredicate accept(Class<?>... clsArr) {
        Stream map = Stream.of((Object[]) clsArr).map(new b(1));
        List<ClassNameMatcher> list = this.acceptMatchers;
        Objects.requireNonNull(list);
        map.forEach(new a(list, 0));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ObjectStreamClassPredicate reject(Class<?>... clsArr) {
        Stream map = Stream.of((Object[]) clsArr).map(new b(2));
        List<ClassNameMatcher> list = this.rejectMatchers;
        Objects.requireNonNull(list);
        map.forEach(new a(list, 0));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean test(String str) {
        Iterator<ClassNameMatcher> it = this.rejectMatchers.iterator();
        while (it.hasNext()) {
            if (it.next().matches(str)) {
                return false;
            }
        }
        Iterator<ClassNameMatcher> it2 = this.acceptMatchers.iterator();
        while (it2.hasNext()) {
            if (it2.next().matches(str)) {
                return true;
            }
        }
        return false;
    }

    public ObjectStreamClassPredicate accept(ClassNameMatcher classNameMatcher) {
        this.acceptMatchers.add(classNameMatcher);
        return this;
    }

    public ObjectStreamClassPredicate reject(ClassNameMatcher classNameMatcher) {
        this.rejectMatchers.add(classNameMatcher);
        return this;
    }

    public ObjectStreamClassPredicate accept(Pattern pattern) {
        this.acceptMatchers.add(new RegexpClassNameMatcher(pattern));
        return this;
    }

    public ObjectStreamClassPredicate reject(Pattern pattern) {
        this.rejectMatchers.add(new RegexpClassNameMatcher(pattern));
        return this;
    }

    public ObjectStreamClassPredicate accept(String... strArr) {
        Stream map = Stream.of((Object[]) strArr).map(new b(0));
        List<ClassNameMatcher> list = this.acceptMatchers;
        Objects.requireNonNull(list);
        map.forEach(new a(list, 1));
        return this;
    }

    public ObjectStreamClassPredicate reject(String... strArr) {
        Stream map = Stream.of((Object[]) strArr).map(new b(0));
        List<ClassNameMatcher> list = this.rejectMatchers;
        Objects.requireNonNull(list);
        map.forEach(new a(list, 1));
        return this;
    }

    /* JADX INFO: renamed from: test, reason: avoid collision after fix types in other method */
    public boolean test2(ObjectStreamClass objectStreamClass) {
        return test(objectStreamClass.getName());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.function.Predicate
    public /* bridge */ /* synthetic */ boolean test(ObjectStreamClass objectStreamClass) {
        return test2(objectStreamClass);
    }
}
