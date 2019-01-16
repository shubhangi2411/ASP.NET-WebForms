using System;

namespace ProjectFees
{
    public class StateFee
    {
        public string Name { get; private set; }
        public string TwoLetterCode { get; private set; }
        public Decimal Fee { get; private set; }

        public StateFee(string name, string twolettercode, decimal fee)
        {
            Name = name;
            twolettercode = TwoLetterCode;
            fee = Fee;
        }

    }

}
