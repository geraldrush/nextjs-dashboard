import { GlobeAltIcon } from "@heroicons/react/24/outline";
import { lusitana } from "@/app/ui/fonts";

export default function AcmeLogo() {
  return (
    <div className={lusitana.className}>
      <GlobeAltIcon className="h-6 w-6" />
      <span>Acme</span>
    </div>
  );
}
