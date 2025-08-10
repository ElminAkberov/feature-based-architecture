import Button from '@/components/ui/Button';
import Input from '@/components/ui/Input';
import { Header } from '@/components/index';
import { Footer } from '@/components/index';

const App = () => {
    return (
        <div className="text-red-500">
            <Header />
            <Input />
            <Button />
            <Footer />
        </div>
    );
};

export default App;
